
# specialize some types
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
            "        raise \"Ptr #{self} is empty. Cannot call \#{m} on it!\" if empty\n"\
            "        obj.method(m).call(*args)\n"\
            "    end\n"
        end
    end

    class RVector < RStruct
        def specialize_ruby
            %Q$ include Enumerable
            def each(&block)
                if block
                     s = size
                     0.upto(s-1) do |i|
                         yield self[i]
                     end
                else
                    Enumerator.new(self)
                end
            end
            def <<(val)
                push_back(val)
            end
            Kernel.eval %Q{module ::OpenCV
            module Vector
                class #{GeneratorRuby.normalize_type_name(@vector_type.name)}
                    def self.new
                        ::#{GeneratorRuby.normalize_type_name(self.name)}.new
                    end
                end
            end
            end}$
        end
    end
end

