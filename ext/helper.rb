# Template for opencv smart pointer
class OpenCVPtr < Rbind::RTemplateClass
    def initialize(name="cv::Ptr")
        super
    end

    def specialize(klass,parameters)
        if parameters.size != 1
            raise ArgumentError,"OpenCVPtr does only support one template parameter. Got: #{parameters}}"
        end
        ptr_type = parameters.first

        klass.add_operation Rbind::ROperation.new(klass.name,nil,Rbind::RParameter.new("other",klass))
        klass.add_operation Rbind::ROperation.new("addref",type("void"))
        klass.add_operation Rbind::ROperation.new("release",type("void"))
        klass.add_operation Rbind::ROperation.new("delete_obj",type("void"))
        klass.add_operation Rbind::ROperation.new("empty",type("bool"))
        klass.add_attribute Rbind::RAttribute.new("obj",ptr_type.to_ptr.to_ownership(false))
        klass
    end

    def specialize_ruby_specialization(klass)
        "    def method_missing(m,*args)\n"\
            "        raise \"Ptr #{self} is empty. Cannot call \#{m} on it!\" if empty\n"\
        "        obj.method(m).call(*args)\n"\
            "    end\n"
    end
end

# Template for opencv's new smart pointer
class OpenCVPtr2 < Rbind::RTemplateClass
    def initialize(name="cv::Ptr")
        super
    end

    def specialize(klass,parameters)
        if parameters.size != 1
            raise ArgumentError,"OpenCVPtr2 does only support one template parameter. Got: #{parameters}}"
        end
        ptr_type = parameters.first

        klass.add_operation Rbind::ROperation.new(klass.name,nil,Rbind::RParameter.new("other",klass))
        klass.add_operation Rbind::ROperation.new(klass.name,nil,Rbind::RParameter.new("p",ptr_type.to_ptr))
        klass.add_operation Rbind::ROperation.new("release",type("void"))
        klass.add_operation Rbind::ROperation.new("reset",type("void"),Rbind::RParameter.new("p",ptr_type.to_ptr))
        klass.add_operation Rbind::ROperation.new("swap",type("void"),Rbind::RParameter.new("other",klass))
        klass.add_operation Rbind::ROperation.new("get",ptr_type.to_ptr.to_ownership(false))
        klass.add_operation Rbind::ROperation.new("empty",type("bool"))
        klass
    end

    def specialize_ruby_specialization(klass)
        "    def method_missing(m,*args)\n"\
            "        raise \"Ptr #{self} is empty. Cannot call \#{m} on it!\" if empty\n"\
        "        get.method(m).call(*args)\n"\
            "    end\n"
    end
end

class Vec < Rbind::RClass
    def initialize(name,type,size)
        super(name)
        add_attribute Rbind::RAttribute.new("val",type.to_ptr)
        add_operation Rbind::ROperation.new(self.name)
        add_operation Rbind::ROperation.new(self.name,nil,Rbind::RParameter.new("other",self))

        paras = 0.upto(size-1).map do |idx|
            Rbind::RParameter.new("t#{idx}",type)
        end
        add_operation Rbind::ROperation.new(self.name,nil,paras)
        add_operation Rbind::ROperation.new("all",self,Rbind::RParameter.new("alpha",type))
        add_operation Rbind::ROperation.new("mul",self,Rbind::RParameter.new("other",self))
        add_operation Rbind::ROperation.new("conj",self) if size == 2 && !type.name =~/int/
        add_operation Rbind::ROperation.new("operator==",type.owner.bool,Rbind::RParameter.new("vec",self))
        add_operation Rbind::ROperation.new("operator!=",type.owner.bool,Rbind::RParameter.new("vec",self))
        add_operation Rbind::ROperation.new("operator+",self,Rbind::RParameter.new("vec",self))
        add_operation Rbind::ROperation.new("operator-",self,Rbind::RParameter.new("vec",self))
        add_operation Rbind::ROperation.new("operator*",self,Rbind::RParameter.new("vec",type))
        add_operation Rbind::ROperation.new("operator/",self,Rbind::RParameter.new("vec",type))
    end
end

# find opencv version and headers needed to be parsed by rbind
def find_opencv
    # find opencv header path
    out = IO.popen("pkg-config --cflags-only-I opencv")
    paths = out.read.split("-I").delete_if(&:empty?).map do |i|
        i.gsub("\n","").gsub(" ","")
    end
    raise "Cannot find OpenCV" if paths.empty?

    #check opencv version
    out = IO.popen("pkg-config --modversion opencv")
    out.read.chomp =~ /(\d+).(\d+).(\d+)/
    major = $1.to_i; minor = $2.to_i; revision = $3.to_i

    ##add opencv headers
    headers = if major < 1 || (major == 2 && minor <= 4 && revision<= 3)
                  raise "OpenCV version #{opencv_version} is not supported. At least OpenCV 2.4.4 is required"
              elsif major == 2
                  ["opencv2/core/core_c.h", "opencv2/core/types_c.h",
                      "opencv2/core/core.hpp", "opencv2/flann/miniflann.hpp",
                      "opencv2/imgproc/imgproc_c.h", "opencv2/imgproc/types_c.h",
                      "opencv2/imgproc/imgproc.hpp", "opencv2/photo/photo_c.h",
                      "opencv2/photo/photo.hpp", "opencv2/video/video.hpp","opencv2/video/tracking.hpp",
                      "opencv2/video/background_segm.hpp",
                      "opencv2/features2d/features2d.hpp", "opencv2/objdetect/objdetect.hpp",
                      "opencv2/calib3d/calib3d.hpp", "opencv2/ml/ml.hpp",
                      "opencv2/highgui/highgui_c.h", "opencv2/highgui/highgui.hpp",
                      "opencv2/contrib/contrib.hpp", "opencv2/nonfree/nonfree.hpp",
                      "opencv2/nonfree/features2d.hpp"]
              elsif major == 3
                  ["opencv2/core.hpp", "opencv2/core/base.hpp", "opencv2/core/mat.hpp", "opencv2/core/ocl.hpp",
                   "opencv2/core/opengl.hpp", "opencv2/core/optim.hpp", "opencv2/core/persistence.hpp", "opencv2/core/types.hpp",
                   "opencv2/core/utility.hpp", "opencv2/imgproc.hpp", "opencv2/imgcodecs.hpp", "opencv2/videoio.hpp",
                   "opencv2/highgui.hpp", "opencv2/video/background_segm.hpp", "opencv2/video/tracking.hpp", "opencv2/flann/miniflann.hpp",
                   "opencv2/ml.hpp", "opencv2/features2d.hpp", "opencv2/calib3d.hpp", "opencv2/objdetect.hpp", "opencv2/photo.hpp",
                   "opencv2/shape/hist_cost.hpp", "opencv2/shape/shape_distance.hpp", "opencv2/shape/shape_transformer.hpp", "opencv2/stitching.hpp",
                   "opencv2/stitching/detail/blenders.hpp", "opencv2/stitching/detail/exposure_compensate.hpp", "opencv2/stitching/detail/motion_estimators.hpp",
                   "opencv2/stitching/detail/seam_finders.hpp", "opencv2/stitching/detail/timelapsers.hpp", "opencv2/videostab/motion_core.hpp",
                   "opencv2/viz/types.hpp", "opencv2/viz/widgets.hpp"]
              else
                  raise "OpenCV version #{opencv_version} is currently not supported"
              end

    temp = paths.clone
    temp.each do |path|
	if path =~ /(.*)opencv$/
	    paths << $1
	elsif path =~ /(.*)opencv2$/
	    paths << $1
        end
    end

    # check that all headers are available
    headers = headers.map do |i|
	path = paths.find do |p|
	           p = File.join(p,i)
	           File.exist?(p)
	       end
        if path
            File.join(path,i)
        else
            ::Rbind.log.info "OpenCV version does not support #{i}"
            nil
	end
    end.compact
    [major,minor,revision,headers]
end
