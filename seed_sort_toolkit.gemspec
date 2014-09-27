# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seed_sort_toolkit/version'

Gem::Specification.new do |spec|
  spec.name          = "seed_sort_toolkit"
  spec.version       = SeedSortToolkit::VERSION
  spec.authors       = ["Shinya131"]
  spec.email         = ["nagai3mt5b@gmail.com"]
  spec.summary       = "This is rails seed file sort tool. This tool can without changing the content & format, just replace only order."
  spec.description   = "This is rails seed file sort tool. This tool can without changing the content & format, just replace only order."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "accessible_seed_yaml", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "coveralls"
end
