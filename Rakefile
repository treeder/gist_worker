require 'rake/dsl_definition' # temporary I think?
require 'rake/testtask'
require 'jeweler2'

Jeweler::Tasks.new do |gemspec|
  gemspec.name = "gist_worker"
  gemspec.summary = "A worker that will run a Github Gist on on IronWorker http://www.iron.io"
  gemspec.description = "A worker that will run a Github Gist on on IronWorker http://www.iron.io"
  gemspec.email = "travis@iron.io"
  gemspec.homepage = "https://github.com/treeder/gist_worker"
  gemspec.authors = ["Travis Reeder"]
  gemspec.files = FileList['lib/**/*.rb', 'VERSION.yml']
  #gemspec.add_dependency 'git'
  gemspec.add_dependency 'iron_worker'
  gemspec.required_ruby_version = '>= 1.9'
end
Jeweler::GemcutterTasks.new

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end


