# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "guard/rubycritic/version"

Gem::Specification.new do |spec|
  spec.name          = "guard-rubycritic"
  spec.version       = Guard::RubycriticVersion::VERSION
  spec.authors       = ["Guilherme Simoes"]
  spec.email         = ["guilherme.rdems@gmail.com"]
  spec.description   = <<-EOF
    Ruby Critic is a tool that listens to modifications in Ruby classes, modules and methods and
    reports any new code smells it finds.
  EOF
  spec.summary       = "Listens to modifications and detects smells in Ruby files"
  spec.homepage      = "https://github.com/whitesmith/guard-rubycritic"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib}/**/*") + %w[LICENSE.txt README.md]
  spec.test_files    = `git ls-files -- test/*`.split("\n")
  spec.require_path  = "lib"

  spec.add_runtime_dependency "guard", "~> 2.6"
  spec.add_runtime_dependency "rubycritic", "~> 2.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.3"
  spec.add_development_dependency "mocha", "~> 1.0"
end
