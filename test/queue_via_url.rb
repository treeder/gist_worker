# After we have our GistWorker uploaded, we may just want to hit the IronWorker url to queue up the task.

require 'yaml'
require 'rest'

@config = YAML::load_file(File.expand_path(File.join("~", "Dropbox", "configs", "gist_worker", "test", "config.yml")))
@rest = Rest::Client.new()
res = @rest.post("https://worker-aws-us-east-1.iron.io/2/projects/#{@config['iron']['project_id']}/tasks?oauth=#{@config['iron']['token']}",
                 :body=>{:tasks=>[
                     'code_name'=>'GistWorker::Worker',
                     'payload'=>{'x'=>'abc', 'y'=>123}.to_json
                 ]
                 }.to_json,
                 :headers=>{'Content-Type'=>'application/json'})
p res
p res.body
