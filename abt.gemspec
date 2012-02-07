# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "abt"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Travis Reeder"]
  s.date = "2012-02-07"
  s.description = "Always Be Testing Yo! A testing framework that runs on IronWorker http://www.iron.io"
  s.email = "travis@iron.io"
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "VERSION.yml",
    "lib/abt.rb",
    "lib/abt/notifiers/hipchat_notifier.rb",
    "lib/abt/notifiers/web_hook_notifier.rb",
    "lib/abt/test_collector.rb",
    "lib/abt/test_worker.rb"
  ]
  s.homepage = "https://github.com/iron-io/abt"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "1.8.15"
  s.summary = "Always Be Testing Yo! A testing framework that runs on IronWorker http://www.iron.io"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<git>, [">= 0"])
      s.add_runtime_dependency(%q<iron_worker>, [">= 0"])
      s.add_runtime_dependency(%q<git>, [">= 0"])
      s.add_runtime_dependency(%q<iron_worker>, [">= 0"])
    else
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<iron_worker>, [">= 0"])
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<iron_worker>, [">= 0"])
    end
  else
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<iron_worker>, [">= 0"])
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<iron_worker>, [">= 0"])
  end
end

