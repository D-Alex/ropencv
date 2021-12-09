require 'rbind'
require 'pp'
require 'yaml'

require File.join(File.dirname(__FILE__),'helper.rb')

major,minor,revision,opencv_headers = find_opencv(ARGV[0])
opencv_version = "#{major}.#{minor}.#{revision}"
Rbind.log.warn "found opencv #{opencv_version}"

rbind = Rbind::Rbind.new("OpenCV")
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
if major >= 3 && major < 4
    rbind.pkg_config << "opencv"
    rbind.add_std_types
    rbind.cv.add_type(Rbind::RClass.new("String"))
    rbind.cv.type_alias["string"] = rbind.cv.String
    rbind.parser.add_type OpenCVPtr2.new
    rbind.cv.add_type(Rbind::RClass.new("ShapeTransformer"))
    rbind.cv.add_type(Rbind::RClass.new("Feature2D"))
    rbind.cv.add_type(Rbind::RClass.new("KeyPoint"))
    rbind.cv.add_type(Rbind::RClass.new("DMatch"))
    rbind.cv.type_alias["FeatureDetector"] = rbind.cv.Feature2D
    rbind.cv.type_alias["DescriptorExtractor"] = rbind.cv.Feature2D
elsif major >= 4
    rbind.pkg_config << "opencv4"
    rbind.add_std_types
    rbind.cv.type_alias["string"] = rbind.std.string
    rbind.cv.type_alias["String"] = rbind.std.string
    rbind.parser.add_type OpenCVPtr2.new
    rbind.cv.add_type(Rbind::RClass.new("Feature2D"))
    rbind.cv.add_type(Rbind::RClass.new("KeyPoint"))
    rbind.cv.add_type(Rbind::RClass.new("DMatch"))
    rbind.cv.type_alias["FeatureDetector"] = rbind.cv.Feature2D
    rbind.cv.type_alias["DescriptorExtractor"] = rbind.cv.Feature2D
    rbind.cv.add_namespace("detail")
    rbind.cv.detail.add_type(Rbind::RClass.new("GraphCutSeamFinderBase"))
    rbind.cv.detail.add_type(Rbind::RClass.new("ImageFeatures"))
    rbind.cv.detail.add_type(Rbind::RClass.new("CameraParams"))
    rbind.cv.detail.add_type(Rbind::RClass.new("MatchesInfo"))
    if(minor >= 2)
        rbind.cv.add_type(Rbind::RClass.new("HistogramCostExtractor"))
        rbind.cv.add_type(Rbind::RClass.new("ShapeTransformer"))
    end
else
    rbind.pkg_config << "opencv"
    rbind.add_std_vector
    rbind.parser.add_type OpenCVPtr.new
end

# parsing
rbind.use_namespace rbind.std
rbind.parse File.join(File.dirname(__FILE__),"pre_opencv244.txt")
rbind.parse File.join(File.dirname(__FILE__),"opencv.txt")
rbind.use_namespace rbind.cv
rbind.parse_headers
rbind.parse File.join(File.dirname(__FILE__),"post_opencv244.txt")
#rbind.cv.String.begin.return_type = rbind.cv.String.begin.return_type.to_const.to_ptr
#rbind.cv.String.end.return_type = rbind.cv.String.end.return_type.to_const.to_ptr

# post parsing + patching wrong signatures
if major == 2 && minor == 4 && revision>= 9
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
elsif major == 3 
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv300.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv300a.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv310.txt") if minor >= 1

#    rbind.cv.randShuffle.parameter(2).remove_const!
#    rbind.cv.AlignExposures.process.parameter(1).remove_const!
    rbind.cv.AlignMTB.process[0].parameter(1).remove_const!
    rbind.cv.AlignMTB.process[1].parameter(1).remove_const!
    rbind.CvDTreeNode.ignore = true
    rbind.CvSlice.ignore = true
    rbind.CvTermCriteria.ignore = true
    rbind.cv.polyfit.ignore = true

    # is removed on opencv master
    rbind.ml.StatModel.getParams.ignore = true if(rbind.ml.StatModel.operation?('getParams'))

    # is removed on opencv master
    # mark none polymorphic class
    rbind.ml.DTrees.Params.polymorphic = false if(rbind.ml.DTrees.type?("Params"))
elsif major >= 4
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv249.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv300.txt")
    rbind.parse File.join(File.dirname(__FILE__),"post_opencv400.txt")

    rbind.cv.AlignMTB.process[0].parameter(1).remove_const!
    rbind.cv.AlignMTB.process[1].parameter(1).remove_const!
    rbind.CvDTreeNode.ignore = true
    rbind.CvSlice.ignore = true
    rbind.CvTermCriteria.ignore = true
    rbind.cv.polyfit.ignore = true
    rbind.cv.FlannBasedMatcher.write[0].ignore = true
    rbind.cv.FlannBasedMatcher.write[1].ignore = true
    rbind.cv.FlannBasedMatcher.read[0].ignore = true
    # issues with UMat
    rbind.detail.NoExposureCompensator.feed.ignore = true
    rbind.detail.GainCompensator.feed.ignore = true
    rbind.detail.BlocksGainCompensator.feed.ignore = true

    # issues with enum using full namespace name
    rbind.cv.HOGDescriptor.ignore = true

    # is removed on opencv master
    rbind.ml.StatModel.getParams.ignore = true if(rbind.ml.StatModel.operation?('getParams'))

    # is removed on opencv master
    # mark none polymorphic class
    rbind.ml.DTrees.Params.polymorphic = false if(rbind.ml.DTrees.type?("Params"))

    if minor >= 2
        rbind.cv.createShapeContextDistanceExtractor.ignore = true
    end
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
rbind.parser.type("std::vector<Range>")
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

# add version
cmajor = Rbind::RParameter.new(:CV_VERSION_MAJOR,rbind.parser.type("const int"),major)
cminor= Rbind::RParameter.new(:CV_VERSION_MINOR,rbind.parser.type("const int"),minor)
crevision = Rbind::RParameter.new(:CV_VERSION_REVISION,rbind.parser.type("const int"),revision)
rbind.parser.add_const(cmajor)
rbind.parser.add_const(cminor)
rbind.parser.add_const(crevision)

# generate files
rbind.generator_ruby.file_prefix = "ropencv"
rbind.generate(File.join(File.dirname(__FILE__),"src"),File.join(File.dirname(__FILE__),"..","lib","ropencv"))

