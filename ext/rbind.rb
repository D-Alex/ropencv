require 'rbind'
require 'pp'
require File.join(File.dirname(__FILE__),'specializing.rb')

rbind = Rbind::Rbind.new("OpenCV")
rbind.pkg_config << "opencv"

# find opencv header path
out = IO.popen("pkg-config --cflags-only-I opencv")
paths = out.read.split("-I").delete_if(&:empty?).map do |i|
    i.gsub("\n","").gsub(" ","").gsub("opencv","")
end
raise "Cannot find OpenCV" if paths.empty?

#check opencv version
out = IO.popen("pkg-config --modversion opencv")
opencv_version = out.read.chomp

##add opencv headers
if opencv_version == "2.4.4"
    rbind.includes =   ["opencv2/core/core_c.h", "opencv2/core/types_c.h",
                        "opencv2/core/core.hpp", "opencv2/flann/miniflann.hpp",
                        "opencv2/imgproc/imgproc_c.h", "opencv2/imgproc/types_c.h",
                        "opencv2/imgproc/imgproc.hpp", "opencv2/photo/photo_c.h",
                        "opencv2/photo/photo.hpp", "opencv2/video/video.hpp",
                        "opencv2/features2d/features2d.hpp", "opencv2/objdetect/objdetect.hpp",
                        "opencv2/calib3d/calib3d.hpp", "opencv2/ml/ml.hpp",
                        "opencv2/highgui/highgui_c.h", "opencv2/highgui/highgui.hpp",
                        "opencv2/contrib/contrib.hpp", "opencv2/nonfree/nonfree.hpp",
                        "opencv2/nonfree/features2d.hpp"]
elsif opencv_version >= "2.4.9"
    rbind.includes =   ["opencv2/core.hpp", "opencv2/core/types.hpp",
                        "opencv2/core/utility.hpp", "opencv2/core/base.hpp",
                        "opencv2/contrib.hpp", "opencv2/calib3d.hpp",
                        "opencv2/features2d.hpp", "opencv2/flann.hpp",
                        "opencv2/highgui.hpp", "opencv2/imgproc.hpp",
                        "opencv2/ml.hpp", "opencv2/nonfree.hpp",
                        "opencv2/nonfree/features2d.hpp", "opencv2/objdetect.hpp",
                        "opencv2/photo.hpp", "opencv2/softcascade.hpp",
                        "opencv2/stitching.hpp", "opencv2/superres.hpp",
                        "opencv2/video.hpp", "opencv2/legacy.hpp",
                        "opencv2/videostab.hpp"]
else
    raise "OpenCV version #{opencv_version} is not supported"
end

# check that all headers are available
rbind.includes = rbind.includes.map do |i|
    path = File.join(paths[0],i)
    if !File.exist?(path)
        ::Rbind.log.info "OpenCV version does not support #{path}"
        nil
    else
        path
    end
end.compact
Rbind.log.info "found opencv #{opencv_version}: #{paths[0]}"

# auto add vector and ptr types if missing
rbind.on_type_not_found do |owner,type|
    if type =~ /Ptr_(.*)/
        t = rbind.parser.find_type(owner,$1)
        t2 = Rbind::RPtr.new(type,rbind,t).typedef("cv::Ptr<#{t.full_name} >")
        rbind.parser.add_type t2
    elsif type =~ /vector_(.*)/
        t = rbind.parser.find_type(owner,$1)
        t2 = Rbind::RVector.new(type,rbind,t).typedef("std::vector<#{t.full_name} >")
        rbind.parser.add_type t2
    end
end

# parsing
rbind.parse File.join(File.dirname(__FILE__),"pre_opencv244.txt")
rbind.parse File.join(File.dirname(__FILE__),"opencv.txt")
rbind.use_namespace rbind.cv
rbind.cv.types_alias["string"] = rbind.cv.String
rbind.parse_headers
rbind.parse File.join(File.dirname(__FILE__),"post_opencv244.txt")

# post parsing + patching wrong signatures
if opencv_version == "2.4.4"
    rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(2).add_flag(:IO)
    rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(3).add_flag(:IO)
elsif opencv_version >= "2.4.9"
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.cv.randShuffle.parameter(2).add_flag(:IO)
else
    raise "not supported opencv version"
end

rbind.cv.BRISK.generateKernel.parameter(0).add_flag(:IO)
rbind.cv.BRISK.generateKernel.parameter(1).add_flag(:IO)
rbind.cv.BRISK.operation("BRISK")[1].parameter(0).add_flag(:IO)
rbind.cv.BRISK.operation("BRISK")[1].parameter(1).add_flag(:IO)

rbind.cv.putText.parameter(0).add_flag(:IO)
rbind.cv.chamerMatching.parameter(0).add_flag(:IO)
rbind.cv.chamerMatching.parameter(1).add_flag(:IO)
rbind.cv.chamerMatching.parameter(2).add_flag(:IO)

# add some more vector types
rbind.parser.find_type(rbind,"vector_Point3f")
rbind.parser.find_type(rbind,"vector_Point3d")

# generate files
rbind.generator_ruby.file_prefix = "ropencv"
rbind.generate(File.join(File.dirname(__FILE__),"src"),File.join(File.dirname(__FILE__),"..","lib","ruby","ropencv"))

