# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "activerecord-exception-adapter"
  spec.version       = '0.1.0'
  spec.authors       = ["Kohei Suzuki"]
  spec.email         = ["eagletmt@gmail.com"]
  spec.summary       = %q{ActiveRecord adapter that raises an exception when used}
  spec.description   = %q{ActiveRecord adapter that raises an exception when used}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "appraisal", ">= 1.0.0"
  spec.add_dependency "activerecord", ">= 3.2"
end
