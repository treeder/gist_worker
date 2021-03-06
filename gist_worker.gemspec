# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gist_worker"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Travis Reeder"]
  s.date = "2012-03-06"
  s.description = "A worker that will run a Github Gist on on IronWorker http://www.iron.io"
  s.email = "travis@iron.io"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "VERSION.yml",
    "lib/gist_worker.rb",
    "lib/gist_worker/worker.rb"
  ]
  s.homepage = "https://github.com/treeder/gist_worker"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "1.8.15"
  s.summary = "A worker that will run a Github Gist on on IronWorker http://www.iron.io"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<iron_worker>, [">= 0"])
      s.add_runtime_dependency(%q<iron_worker>, [">= 0"])
    else
      s.add_dependency(%q<iron_worker>, [">= 0"])
      s.add_dependency(%q<iron_worker>, [">= 0"])
    end
  else
    s.add_dependency(%q<iron_worker>, [">= 0"])
    s.add_dependency(%q<iron_worker>, [">= 0"])
  end
end

