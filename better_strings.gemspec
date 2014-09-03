# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'better_strings/version'

Gem::Specification.new do |spec|
  spec.name          = "better_strings"
  spec.version       = BetterStrings::VERSION
  spec.authors       = ["Alexandr Shlinchak"]
  spec.email         = ["minotep@gmail.com"]
  spec.summary       = %q{This is a gem for adding more functionality for Ruby String class}
  spec.description   = %q{Add new features for String class}
  spec.homepage      = "https://github.com/ashlinchak/better_strings"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
