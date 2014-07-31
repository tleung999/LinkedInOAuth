# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'OAuthLinkedIn/version'

Gem::Specification.new do |spec|
  spec.name          = "OAuthLinkedIn"
  spec.version       = OAuthLinkedIn::VERSION
  spec.authors       = ["Albert Alquisola & Tony Leung"]
  spec.email         = ["pair+aalquiso.tleung999@devbootcamp.com"]
  spec.description   = "Gem for LinkedInOAuth"
  spec.summary       = "this gem makes authorizing linkedin access easier"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
