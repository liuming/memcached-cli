# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memcached/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "memcached-cli"
  spec.version       = Memcached::Cli::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]
  spec.summary       = %q{Alias gem of memcached_cli}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/liuming/memcached-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "memcached_cli"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
