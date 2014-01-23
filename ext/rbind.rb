require 'rbind'
require 'pp'
require 'yaml'

require File.join(File.dirname(__FILE__),'helper.rb')
opencv_version,opencv_headers = find_opencv

rbind = Rbind::Rbind.new("OpenCV")
rbind.pkg_config << "opencv"
rbind.includes = opencv_headers

# add some templates and alias
rbind.parser.type_alias["const_c_string"] = rbind.c_string.to_const
if opencv_version >= "2.4.9"
    rbind.add_std_types
    rbind.parser.add_type OpenCVPtr2.new
else
    rbind.add_std_vector
    rbind.parser.add_type OpenCVPtr.new
end

# add Vec types
2.upto(6) do |idx|
    next if idx == 5
    rbind.parser.add_type Vec.new("cv::Vec#{idx}d",rbind.double,idx)
    rbind.parser.add_type Vec.new("cv::Vec#{idx}f",rbind.float,idx)
    rbind.parser.add_type Vec.new("cv::Vec#{idx}i",rbind.int,idx)
end

# parsing
rbind.parse File.join(File.dirname(__FILE__),"pre_opencv244.txt")
rbind.parse File.join(File.dirname(__FILE__),"opencv.txt")
rbind.use_namespace rbind.cv
rbind.use_namespace rbind.std
rbind.cv.type_alias["string"] = rbind.cv.String
rbind.parse_headers
rbind.parse File.join(File.dirname(__FILE__),"post_opencv244.txt")

# post parsing + patching wrong signatures
if opencv_version >= "2.4.9" && opencv_version < "3.0.0"
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.cv.randShuffle.parameter(2).remove_const!
elsif opencv_version >= "3.0.0"
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.cv.randShuffle.parameter(2).remove_const!
    rbind.cv.AlignExposures.process.parameter(1).remove_const!
    rbind.cv.AlignMTB.process[0].parameter(1).remove_const!
    rbind.cv.AlignMTB.process[1].parameter(1).remove_const!
end

rbind.cv.calcOpticalFlowSF[0].parameter(0).remove_const!
rbind.cv.calcOpticalFlowSF[0].parameter(1).remove_const!
rbind.cv.calcOpticalFlowSF[0].parameter(2).remove_const!

rbind.cv.calcOpticalFlowSF[1].parameter(0).remove_const!
rbind.cv.calcOpticalFlowSF[1].parameter(1).remove_const!
rbind.cv.calcOpticalFlowSF[1].parameter(2).remove_const!

rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(2).remove_const!
rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(3).remove_const!

rbind.cv.BRISK.generateKernel.parameter(0).remove_const!
rbind.cv.BRISK.generateKernel.parameter(1).remove_const!
rbind.cv.BRISK.operation("BRISK")[1].parameter(0).remove_const!
rbind.cv.BRISK.operation("BRISK")[1].parameter(1).remove_const!

rbind.cv.putText.parameter(0).remove_const!
rbind.cv.chamerMatching.parameter(0).remove_const!
rbind.cv.chamerMatching.parameter(1).remove_const!
rbind.cv.chamerMatching.parameter(2).remove_const!

# add some more vector types
rbind.parser.type("std::vector<Point3f>")
rbind.parser.type("std::vector<Point3d>")
rbind.parser.type("std::vector<Vec4i>")

# add some extra documentation
rbind.parser.doc = "ROpenCV API Documentation for OpenCV #{opencv_version}"
rbind.parser.cv.doc = "ROpenCV API Documentation for OpenCV #{opencv_version}"

# add opencv docu
# this is disabled by default because yard takes ages to parse
# the ruby files
if ARGV.include?("--doc")
    Rbind.log.info "processing opencv.yml"
    @doc = YAML.load(File.open(File.join(File.dirname(__FILE__),'opencv.yml'),"r:ascii").read)
    rbind.parser.each_type do |t|
        if @doc.has_key?(t.full_name)
            t.doc = @doc[t.full_name]
        end
        next unless t.is_a?(Rbind::RNamespace)
        t.each_operation do |op|
            if @doc.has_key?(op.full_name)
                op.doc = @doc[op.full_name]
            end
        end
    end
end

# replace default parameter values which are template
# functions and not available on the ruby side
Rbind::GeneratorRuby.on_normalize_default_value do |parameter|
    if parameter.default_value =~ /.*makePtr<(.*)>\(\)/
        "cv::Ptr<#{$1}>(new #{$1})"
    end
end

# generate files
rbind.generator_ruby.file_prefix = "ropencv"
rbind.generate(File.join(File.dirname(__FILE__),"src"),File.join(File.dirname(__FILE__),"..","lib","ropencv"))

