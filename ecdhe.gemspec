# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ecdhe/version'

Gem::Specification.new do |spec|
	spec.name          = "ecdhe"
	spec.version       = Ecdhe::VERSION
	spec.authors       = ["Tyrel Richey"]
	spec.email         = ["ty.mu.tech.industries@gmail.com"]

	spec.summary       = %q{Ruby implementation of the ECDHE key exchange procedure.}
	spec.description   = %q{Allows two parties to secure a private key for symetric encryption via an unsecured line.}
	spec.homepage      = "https://github.com/MuTechIndustries/Draco-ECDHE-Ruby"
	spec.license       = "MIT"

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	spec.bindir        = "exe"
	spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]

	spec.add_development_dependency "bundler", "~> 1.13"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.0"
end
