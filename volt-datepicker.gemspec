# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volt/datepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "volt-datepicker"
  spec.version       = Volt::Datepicker::VERSION
  spec.authors       = ["Ryan Stout"]
  spec.email         = ["ryanstout@gmail.com"]
  spec.summary       = %q{A field which shows a datepicker when focused}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'volt-fields', '~> 0.1.2'

  spec.add_development_dependency "volt", "~> 0.9.4.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
  spec.add_development_dependency "rake"
end
