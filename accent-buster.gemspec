# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accent-buster/version'

Gem::Specification.new do |spec|
  # We are using refinements
  # Something wrong when trying to install
  # using bundler =\
  # Does not accept ruby 2.1 >_<
  #spec.required_ruby_version = '>= 2.0'

  spec.name          = "accent-buster"
  spec.version       = AccentBuster::VERSION
  spec.authors       = ["Ronie Uliana"]
  spec.email         = ["ronie.uliana@gmail.com"]
  spec.description   = %q{Add "String#accent_buster" that replaces diacritics marks by their non-diacritic equivalents.}
  spec.summary       = %q{Add "String#accent_buster" that replaces diacritics marks by their non-diacritic equivalents. I made it because I don't want to add "ActiveSupport" to the projects everytime I need that (also, I'm too lazy to type the same thing all the time). This lib will have NO MORE than the very strictly necessary to replace diacritics, currently, it has 2 methods: "String#accent_buster" and "String#accent_buster!" (note the bang).}
  spec.homepage      = "http://github.com/ruliana/accent-buster"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.0", ">= 1.5.1"
  spec.add_development_dependency "rake"
end
