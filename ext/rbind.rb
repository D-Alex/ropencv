require 'rbind'
require 'pp'
require 'yaml'

require File.join(File.dirname(__FILE__),'helper.rb')
opencv_version,opencv_headers = find_opencv

rbind = Rbind::Rbind.new("OpenCV")
rbind.pkg_config << "opencv"
rbind.includes = opencv_headers

# add Vec types
2.upto(6) do |idx|
    next if idx == 5
    rbind.parser.add_type Vec.new("cv::Vec#{idx}d",rbind.double,idx)
    rbind.parser.add_type Vec.new("cv::Vec#{idx}f",rbind.float,idx)
    rbind.parser.add_type Vec.new("cv::Vec#{idx}i",rbind.int,idx)
end

# add some templates and alias
rbind.parser.type_alias["const_c_string"] = rbind.c_string.to_const
if opencv_version >= "3.0.0"
    rbind.add_std_types
    rbind.parser.add_type OpenCVPtr2.new
    rbind.cv.add_type(Rbind::RClass.new("ShapeTransformer"))
    rbind.cv.add_type(Rbind::RClass.new("Feature2D"))
    rbind.cv.type_alias["FeatureDetector"] = rbind.cv.Feature2D
    rbind.cv.type_alias["DescriptorExtractor"] = rbind.cv.Feature2D
    # add missing enum values
    rbind.cv.add_type(Rbind::RClass.new("Stitcher"))
    rbind.cv.Stitcher.add_type(Rbind::REnum.new("Status"))
    rbind.cv.Stitcher.Status.values = {:OK => 0, :ERR_NEED_MORE_IMGS => 1,:ERR_HOMOGRAPHY_EST_FAIL => 2,:ERR_CAMERA_PARAMS_ADJUST_FAIL => 3}
else
    rbind.add_std_vector
    rbind.parser.add_type OpenCVPtr.new
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

    rbind.cv.calcOpticalFlowSF[0].parameter(0).remove_const!
    rbind.cv.calcOpticalFlowSF[0].parameter(1).remove_const!
    rbind.cv.calcOpticalFlowSF[0].parameter(2).remove_const!

    rbind.cv.calcOpticalFlowSF[1].parameter(0).remove_const!
    rbind.cv.calcOpticalFlowSF[1].parameter(1).remove_const!
    rbind.cv.calcOpticalFlowSF[1].parameter(2).remove_const!

    rbind.cv.chamerMatching.parameter(0).remove_const!
    rbind.cv.chamerMatching.parameter(1).remove_const!
    rbind.cv.chamerMatching.parameter(2).remove_const!

    rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(2).remove_const!
    rbind.cv.CascadeClassifier.detectMultiScale[1].parameter(3).remove_const!
    rbind.cv.BRISK.generateKernel.parameter(0).remove_const!
    rbind.cv.BRISK.generateKernel.parameter(1).remove_const!
    rbind.cv.BRISK.operation("BRISK")[1].parameter(0).remove_const!
    rbind.cv.BRISK.operation("BRISK")[1].parameter(1).remove_const!
    rbind.cv.putText.parameter(0).remove_const!
elsif opencv_version >= "3.0.0"
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv300.txt")
    rbind.cv.randShuffle.parameter(2).remove_const!
    rbind.cv.AlignExposures.process.parameter(1).remove_const!
    rbind.cv.AlignMTB.process[0].parameter(1).remove_const!
    rbind.cv.AlignMTB.process[1].parameter(1).remove_const!
    rbind.CvDTreeNode.ignore = true
    rbind.CvSlice.ignore = true
    rbind.CvTermCriteria.ignore = true
    rbind.cv.polyfit.ignore = true
    rbind.ml.StatModel.getParams.ignore = true

    # mark none polymorphic class
    rbind.cv.ml.DTrees.Params.polymorphic = false
end

# add some more vector types
rbind.parser.type("std::vector<Point2d>")
rbind.parser.type("std::vector<Point3f>")
rbind.parser.type("std::vector<Point3d>")
rbind.parser.type("std::vector<Vec4i>")
rbind.parser.type("std::vector<uint32_t>")
rbind.parser.type("std::vector<uint64_t>")
rbind.parser.type("std::vector<int8_t>")
rbind.parser.type("std::vector<int64_t>")
rbind.parser.type("std::vector<Scalar>")
rbind.parser.type("std::vector<std::vector<Point2d> >")

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

