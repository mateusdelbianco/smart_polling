# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_polling/version'

Gem::Specification.new do |spec|
  spec.name          = "smart_polling"
  spec.version       = SmartPolling::VERSION
  spec.authors       = ["Mateus Del Bianco"]
  spec.email         = ["mateus@delbianco.net.br"]
  spec.summary       = %q{SmartPolling is the smartest way to poll something.}
  spec.description   = %q{SmartPolling keeps polling something, for a limited time, until it gets a response.}
  spec.homepage      = "https://github.com/mateusdelbianco/smart_polling"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
