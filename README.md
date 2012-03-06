# Execute a Gist on IronWorker

An IronWorker that runs any gist.

## Getting Started

### Install Gem

    sudo gem install gist_worker

### Create a gist

Here's an example one: https://gist.github.com/1989106

### Queue it up!

    require 'gist_worker'
    worker = GistWorker::Worker.new
    worker.gist_id = "1989106"
    worker.gist_file = "tester.rb"
    worker.params = {'key1'=>'value', 'key2'=>3}
    worker.queue

Either look in [HUD](hud.iron.io) to see if it worked or:

### Optional: Wait for it to complete

    status = worker.wait_until_complete
    p status
    puts worker.get_log

