# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perfect_money/version'

Gem::Specification.new do |spec|
	spec.name        = "perfect_money"
	spec.version     = PerfectMoney::VERSION
	spec.authors     = ["Mr Black"]
	spec.email       = ["blackworkman@gmail.com"]
	spec.summary     = %q{Perfect Money SDK}
	spec.description = %q{It is a Perfect Money SDK}
	spec.homepage    = ""
	spec.license     = "MIT"

	spec.files         = `git ls-files -z`.split("\x0")
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.add_dependency 'nokogiri'

	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rake"
	spec.add_development_dependency "rspec", "~> 3.1"
	spec.add_development_dependency "tux"
	spec.add_development_dependency "simplecov"
end
