require 'iron_worker'
require 'json'
require 'open-uri'

module GistWorker

  class Worker < IronWorker::Base

    attr_accessor :gist_url, :gist_id, :gist_file, :params

    def run

      unless gist_url
        @gist_url = "https://raw.github.com/gist/#{gist_id}/#{gist_file}"
      end

      # get gist
      gist_file = user_dir + "gist.rb"
      File.open(gist_file, 'wb') do |fo|
        fo.write open(gist_url).read
      end

      $params = @params
      # run gist
      load(gist_file)

    end

  end

end
