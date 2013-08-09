# Template for opencv smart pointer
class OpenCVPtr < Rbind::RTemplateClass
    def initialize(name="cv::Ptr")
        super
    end

    def specialize(klass,*parameters)
        if parameters.size != 1
            raise ArgumentError,"OpenCVPtr does only support one template parameter. Got: #{parameters}}"
        end
        ptr_type = parameters.first

        klass.add_operation Rbind::ROperation.new(klass.name,nil,Rbind::RParameter.new("other",klass))
        klass.add_operation Rbind::ROperation.new("addref",type("void"))
        klass.add_operation Rbind::ROperation.new("release",type("void"))
        klass.add_operation Rbind::ROperation.new("delete_obj",type("void"))
        klass.add_operation Rbind::ROperation.new("empty",type("bool"))
        klass.add_attribute Rbind::RAttribute.new("obj",ptr_type.to_ptr)
        klass
    end

    def specialize_ruby_specialization(klass)
        "    def method_missing(m,*args)\n"\
            "        raise \"Ptr #{self} is empty. Cannot call \#{m} on it!\" if empty\n"\
        "        obj.method(m).call(*args)\n"\
            "    end\n"
    end
end

# find opencv version and headers needed to be parsed by rbind
def find_opencv
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
    headers = if opencv_version >= "2.4.4" && opencv_version <= "2.4.6"
                  ["opencv2/core/core_c.h", "opencv2/core/types_c.h",
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
                  ["opencv2/core.hpp", "opencv2/core/types.hpp",
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
    headers = headers.map do |i|
        path = File.join(paths[0],i)
        if !File.exist?(path)
            ::Rbind.log.info "OpenCV version does not support #{path}"
            nil
        else
            path
        end
    end.compact
    Rbind.log.info "found opencv #{opencv_version}: #{paths[0]}"
    [opencv_version,headers]
end
