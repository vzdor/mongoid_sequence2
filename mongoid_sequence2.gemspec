# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongoid_sequence2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nic Pillinger"]
  gem.email         = ["nic@thelsf.co.uk"]
  gem.description   = %q{Mongoid::Sequence gives you the ability to specify fields to behave like a sequence number (exactly like the "id" column in conventional SQL flavors). Based on the origin mongoid-sequence gem idea but written for mongooid 3.}
  gem.summary       = %q{Specify fields to behave like a sequence number (exactly like the "id" column in conventional SQL flavors).}
  gem.homepage      = "https://github.com/agile42/mongoid_sequence2"

  # gem.add_dependency("mongoid", "~> 4.0.0")
  # gem.add_dependency("activesupport", "~> 4.0.0")
  gem.add_development_dependency("rake", "~> 0.9")
  gem.add_development_dependency("rspec")

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "mongoid-sequence"
  gem.require_paths = ["lib"]
  gem.version       = Mongoid::Sequence2::VERSION
end
