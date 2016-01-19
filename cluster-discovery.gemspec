# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cluster/discovery/version'

Gem::Specification.new do |spec|
  spec.name          = 'cluster-discovery'
  spec.version       = Cluster::Discovery::VERSION
  spec.authors       = ['Andrew Thompson']
  spec.email         = ['Andrew_Thompson@rapid7.com']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'aws-sdk', '~> 2.2'
  spec.add_dependency 'diplomat', '~> 0.15'
end
