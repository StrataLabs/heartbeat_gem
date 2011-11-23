# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "heartbeat/version"

Gem::Specification.new do |s|
  s.name        = "heartbeat"
  s.version     = Heartbeat::VERSION
  s.authors     = ["Niranjan Paranjape"]
  s.email       = ["niranjan@c42.in"]
  s.homepage    = ""
  s.summary     = %q{Heartbeat}
  s.description = %q{Heartbeat}

  s.rubyforge_project = "heartbeat"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rails", "~> 3.0.1"
end
