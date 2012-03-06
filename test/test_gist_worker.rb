require 'yaml'
require 'iron_worker'

@config = YAML::load_file(File.expand_path(File.join("~", "Dropbox", "configs", "gist_worker", "test", "config.yml")))
IronWorker.configure do |config|
  config.token = @config['iron']['token']
  config.project_id = @config['iron']['project_id']
end

require_relative '../lib/gist_worker'

worker = GistWorker::Worker.new
worker.gist_id = "1989106"
worker.gist_file = "tester.rb"
worker.params = {'key1'=>'value', 'key2'=>3}
worker.queue
status = worker.wait_until_complete
p status
puts "LOG:"
puts worker.get_log
