# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fonecal/version'

Gem::Specification.new do |spec|
  spec.name          = "fonecal"
  spec.version       = Fonecal::VERSION
  spec.authors       = ["Martin Madsen"]
  spec.email         = ["martin2madsen@gmail.com"]
  spec.description   = %q{f1cal generates an iCalendar file for the 2014 Formula 1 season.}
  spec.summary       = %q{Crawls the Grand Prix list at formula1.com and builds an iCalendar file with events in UTC}
  spec.homepage      = "https://github.com/Fapper/f1cal"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"

  spec.add_dependency "timezone"
  spec.add_dependency "activesupport"
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'geocoder'
  spec.add_dependency 'i18n'
end
