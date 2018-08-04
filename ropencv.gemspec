Gem::Specification.new do |s|
    s.name              = 'ropencv'
    s.version           = '0.0.22'
    s.date              = '2018-07-10'
    s.platform          = Gem::Platform::RUBY
    s.authors           = ['Alexander Duda']
    s.email             = ['Alexander.Duda@me.com']
    s.homepage          = 'http://www.ropencv.aduda.eu'
    s.summary           = 'Ruby bindings for opencv 2.4.4 and higher'
    s.description       = 'ROpenCV is a ffi ruby binding for the Open Source Computer Vision Library OpenCV 2.4.4 and higher'
    s.files             = `git ls-files`.split("\n") + ["lib/ropencv/ropencv_types.rb","lib/ropencv/ropencv_ruby.rb"]
    s.require_path      = 'lib'
    s.required_rubygems_version = ">= 1.3.6"
    s.add_runtime_dependency "rbind", ">= 0.0.28"
    s.add_runtime_dependency "ffi", "~> 1.9.0"
    s.add_development_dependency 'minitest', '~> 5.5'
    s.extensions = ['ext/extconf.rb']
    s.license = 'BSD'
end
