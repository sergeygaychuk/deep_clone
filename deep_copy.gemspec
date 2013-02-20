# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deep_copy/version'

Gem::Specification.new do |gem|
  gem.name          = "deep_copy"
  gem.version       = DeepCopy::VERSION
  gem.authors       = ["Sergey Gaychuk"]
  gem.email         = ["sergey.gaychuk@gmail.com"]
  gem.description   = %q{Extends base classes for deep copy}
  gem.summary       = %q{Extends base classes for deep copy}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
