module OpenCV
    module LibC
        extend FFI::Library
        ffi_lib FFI::Library::LIBC

        # memory allocators
        attach_function :malloc, [:size_t], :pointer
        attach_function :calloc, [:size_t], :pointer
        attach_function :valloc, [:size_t], :pointer
        attach_function :realloc, [:pointer, :size_t], :pointer
        attach_function :free, [:pointer], :void

        # memory movers
        attach_function :memcpy, [:pointer, :pointer, :size_t], :pointer
        attach_function :bcopy, [:pointer, :pointer, :size_t], :void
    end # module LibC

    def self.included(obj)
        obj.class_eval do 
            def cv
                Cv
            end
        end
    end

    module Cv
        class String
            def self.to_native(obj,context)
                if obj.is_a? ::String
                    str = obj.to_str
                    OpenCV::Cv::String.new(str,str.length).__obj_ptr__
                else
                    rbind_to_native(obj,context)
                end
            end
            def to_s
                c_str
            end
        end
        class Mat
            def self.to_native(obj,context)
                return rbind_to_native(obj,context) if !obj.is_a? ::Array
                h,w,e= if obj.first.is_a? Array
                           [obj.size,obj.first.size,obj.first.first]
                       else
                           [obj.size,1,obj.first]
                       end
                setter,step,type = if e.is_a? Fixnum
                                       [:put_array_of_uint8,w,CV_8UC1]
                                   elsif e.is_a? Float
                                       [:put_array_of_float64,8*w,CV_64FC1]
                                   else
                                       raise "cannot connvert arrays of #{e.class} to array"
                                   end
                ptr = FFI::MemoryPointer.new(:char,h*step)
                if h == 1 || w == 1
                    ptr.method(setter).call(0,obj)
                else
                    obj.each_with_index do |row,i|
                        raise "number of row elements must be equal for each row" if row.size != w
                        ptr.method(setter).call(i*step,row)
                    end
                end
                mat = Mat.new(h,w,type)
                LibC.memcpy(mat.data,ptr,h*step)
                mat.__obj_ptr__
            end

            def -(val)
                if val.is_a? Float
                    Rbind::cv_mat_operator_minus1( self, val)
                elsif val.is_a? Fixnum
                    Rbind::cv_mat_operator_minus2( self, val)
                else
                    Rbind::cv_mat_operator_minus( self, val)
                end
            end

            def +(val)
                if val.is_a? Float
                    Rbind::cv_mat_operator_plus1( self, val)
                elsif val.is_a? Fixnum
                    Rbind::cv_mat_operator_plus2( self, val)
                else
                    Rbind::cv_mat_operator_plus( self, val)
                end
            end

            def /(val)
                if val.is_a? Float
                    Rbind::cv_mat_operator_div1( self, val)
                elsif val.is_a? Fixnum
                    Rbind::cv_mat_operator_div2( self, val)
                else
                    Rbind::cv_mat_operator_div( self, val)
                end
            end

            def *(val)
                if val.is_a? Float
                    Rbind::cv_mat_operator_mult1( self, val)
                elsif val.is_a? Fixnum
                    Rbind::cv_mat_operator_mult2( self, val)
                else
                    Rbind::cv_mat_operator_mult( self, val)
                end
            end

            def pretty_print(pp)
                format = case type & 7
                         when CV_8U
                             '%3.u'
                         else
                             '%6.3f'
                         end
                a = if cols == 1 || rows == 1
                        [to_a]
                    else
                        to_a
                    end
                str = a.map do |r|
                    str = r.map do |e|
                        sprintf(format,e)
                    end.join(" ")
                    "|#{str}|"
                end.join("\n")
                pp.text str
            end

            def to_a
                h = rows
                w = cols
                c = channels
                s = step
                ptr = FFI::MemoryPointer.new(:char,h*s)
                LibC.memcpy(ptr,data,h*s)
                getter = case type & 7
                         when CV_8U
                             ptr.method(:get_array_of_uint8)
                         when CV_32F
                             ptr.method(:get_array_of_float32)
                         when CV_64F
                             ptr.method(:get_array_of_float64)
                         else
                             raise "cannot connvert #{self.class} to array"
                         end
                if w  == 1 || h == 1
                    getter.call(0,total)
                else
                    result = []
                    0.upto(h-1) do |i|
                        result << getter.call(s*i,w*c)
                    end
                    result
                end
            end
        end
    end
end
