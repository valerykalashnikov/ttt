# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ttt/version'

Gem::Specification.new do |spec|
  spec.name          = "ttt"
  spec.version       = TTT::VERSION
  spec.authors       = ["Valery Kalashnikov"]
  spec.email         = ["kalashnikov.valeri@gmail.com"]
  spec.summary       = %q{Tic tac toe gem basics}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-collection_matchers"
end
