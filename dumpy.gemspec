# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dumpy/version'

Gem::Specification.new do |spec|
  spec.name          = "dumpy"
  spec.version       = Dumpy::VERSION
  spec.authors       = ["Adrian Bordinc"]
  spec.email         = ["adrian.bordinc@gmail.com"]
  spec.summary       = %q{Share a file from the terminal}
  spec.homepage      = "http://iconic-cph.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["dumpy"]
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "json", "~> 1.8.1"
  spec.add_runtime_dependency "clipboard", "~> 1.0.5"
  spec.add_runtime_dependency "rest_client", "~> 1.7.3"

end
