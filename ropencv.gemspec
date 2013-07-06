Gem::Specification.new do |s|
    s.name              = 'ropencv'
    s.version           = '0.0.7'
    s.date              = '2013-07-03'
    s.platform          = Gem::Platform::RUBY
    s.authors           = ['Alexander Duda']
    s.email             = ['Alexander.Duda@dfki.de']
    s.homepage          = 'http://github.com/D-Alex/ropencv'
    s.summary           = 'Automated ffi-bindings for opencv 2.4.4 and higher'
    s.description       = 'This are automated ffi ruby wrappers for opencv 2.4.4 and higher. For wrapping '\
                          'all marked OpenCV C++ methods the OpenCV hdr parser is used to parse the OpenCV '\
                          'header files. From there rbind generates a C interface and ruby classes. The '\
                          'ruby classes are using the C interface via ffi to give the user the same object '\
                          'oriented experience on the ruby side like he has on the c++ side.'
    s.files             = `git ls-files`.split("\n") + ["lib/ruby/ropencv/ropencv_types.rb","lib/ruby/ropencv/ropencv_ruby.rb"]
    s.require_path      = 'lib/ruby'
    s.required_rubygems_version = ">= 1.3.6"
    s.add_runtime_dependency "rbind", "~> 0.0.10"
    s.add_runtime_dependency "ffi", "~> 1.9.0"
    s.extensions = ['ext/extconf.rb']
end
