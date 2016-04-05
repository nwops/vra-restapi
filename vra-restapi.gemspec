# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vra-restapi/version'

Gem::Specification.new do |spec|
  spec.name          = 'vra-restapi'
  spec.version       = Vra::VERSION
  spec.authors       = ['Corey Osman']
  spec.email         = ['corey@nwops.io']
  spec.summary       = 'Client gem for interacting with VMware vRealize Automation.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/nwops/vra-restapi'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client',    '~> 1.8'
  spec.add_dependency 'passwordmasker', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 1.21'
  spec.add_development_dependency 'rubocop', '~> 0.35'
  spec.add_development_dependency 'pry',     '~> 0.10'
end
