Gem::Specification.new do |s|
    s.name              = 'ropencv'
    s.version           = '0.0.3'
    s.date              = '2013-07-02'
    s.platform          = Gem::Platform::RUBY
    s.authors           = ['Alexander Duda']
    s.email             = ['Alexander.Duda@dfki.de']
    s.homepage          = 'http://github.com/'
    s.summary           = 'Automated ffi-bindings for opencv 2.4.4 and 2.4.9'
    s.description       = ''
    s.files             = `git ls-files`.split("\n")
    s.require_path      = 'lib/ruby'
    s.required_rubygems_version = ">= 1.3.6"
    s.add_runtime_dependency "rbind", "~> 0.0.8"
    s.add_runtime_dependency "ffi", "~> 1.9.0"
    s.extensions = ['ext/extconf.rb']
end
