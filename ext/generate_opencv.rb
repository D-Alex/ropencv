require 'rbind'
require 'pp'

#check opencv version
out = IO.popen("pkg-config --modversion opencv")
version = out.read.chomp
if version < "2.4.9"
    raise "too old OpenCV version #{version}. At least 2.4.9 is needed"
end

rbind = Rbind::Rbind.new("OpenCV")
rbind.pkg_config << "opencv"
rbind.includes = ["opencv2/core.hpp",
                  "opencv2/core/types.hpp",
                  "opencv2/core/utility.hpp",
                  "opencv2/core/base.hpp",
                  "opencv2/contrib.hpp",
                  "opencv2/calib3d.hpp",
                  "opencv2/features2d.hpp",
                  "opencv2/flann.hpp",
                  "opencv2/highgui.hpp",
                  "opencv2/imgproc.hpp",
                  "opencv2/ml.hpp",
                  "opencv2/nonfree.hpp",
                  "opencv2/nonfree/features2d.hpp",
                  "opencv2/objdetect.hpp",
                  "opencv2/photo.hpp",
                  "opencv2/softcascade.hpp",
                  "opencv2/stitching.hpp",
                  "opencv2/superres.hpp",
                  "opencv2/video.hpp",
                  "opencv2/legacy.hpp",
                  "opencv2/videostab.hpp"]

# find opencv headers path
out = IO.popen("pkg-config --cflags-only-I opencv")
paths = out.read.split("-I").delete_if(&:empty?).map do |i|
    i.gsub("\n","").gsub(" ","").gsub("opencv","")
end
raise "Cannot find OpenCV" if paths.empty?

rbind.includes = rbind.includes.map do |i|
    path = File.join(paths[0],i)
    if !File.exist?(path)
        ::Rbind.log.info "OpenCV version does not support #{path}"
        nil
    else
        path
    end
end.compact
Rbind.log.info "found opencv: #{paths[0]}"

module Rbind
    class RPtr < RStruct
        def initialize(name,root,type)
            super(name)
            add_operation ROperation.new(self.name,nil,RParameter.new("other",self))
            add_operation ROperation.new("addref",root.type("void"))
            add_operation ROperation.new("release",root.type("void"))
            add_operation ROperation.new("delete_obj",root.type("void"))
            add_operation ROperation.new("empty",root.type("bool"))
            add_attribute RAttribute.new("obj",type.to_ptr)
        end

        def specialize_ruby
            "    def method_missing(m,*args)\n"\
            "        obj.method(m).call(*args)\n"\
            "    end\n"
        end
    end

    class RVector < RStruct
        def specialize_ruby
            %Q|Kernel.eval %Q{ module ::OpenCV
            module Vector
                class #{GeneratorRuby.normalize_type_name(@vector_type.name)}
                    def self.new
                        #{GeneratorRuby.normalize_type_name(self.name)}.new
                    end
                end
            end
            end}|
        end
    end
end

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

rbind.parse File.join(File.dirname(__FILE__),"opencv.txt")
rbind.use_namespace rbind.cv
rbind.parse_headers

rbind.cv.BRISK.generateKernel.parameter(0).add_flag(:IO)
rbind.cv.BRISK.generateKernel.parameter(1).add_flag(:IO)
rbind.cv.BRISK.operation("BRISK")[1].parameter(0).add_flag(:IO)
rbind.cv.BRISK.operation("BRISK")[1].parameter(1).add_flag(:IO)

rbind.cv.randShuffle.parameter(2).add_flag(:IO)
rbind.cv.putText.parameter(0).add_flag(:IO)
rbind.cv.chamerMatching.parameter(0).add_flag(:IO)
rbind.cv.chamerMatching.parameter(1).add_flag(:IO)
rbind.cv.chamerMatching.parameter(2).add_flag(:IO)
rbind.cv.operation("drawKeypoints").parameter(3).default_value = "Scalar(-1,-1,-1,-1)"

rbind.generator_ruby.file_prefix = "opencv"
rbind.generate(File.join(File.dirname(__FILE__),"src"),File.join(File.dirname(__FILE__),"..","lib","opencv"))
rbind.build
