# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hamburger/version'

Gem::Specification.new do |spec|
  spec.name          = "hamburger"
  spec.version       = Hamburger::VERSION
  spec.authors       = ["Travis Pessetto"]
  spec.email         = ["travis@pessetto.com"]
  spec.summary       = %q{Dumps all sql data to JSON for easy migration of DB}
  spec.description   = %q{Dumps all sql data to JSON for DB agnostic data storage}
  spec.homepage      = "https://helpsheets.co"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
