require 'iron_worker'
require 'json'
# require 'test/unit'
ARGV=[]
module Abt

  class MiniTestWithHooks < MiniTest::Unit
    def before_suites
    end

    def after_suites
    end

    def _run_suites(suites, type)
      puts 'run_suites ' + suites.inspect + ' type=' + type.inspect
      begin
        before_suites
        super(suites, type)
      ensure
        after_suites
      end
    end

    def _run_suite(suite, type)
      puts 'run_suite ' + suite.inspect + ' type=' + type.inspect
      begin
        # suite.before_suite
        super(suite, type)
      ensure
        # suite.after_suite
      end
    end
  end


  class TestWorker < IronWorker::Base

    merge_gem 'git'

    attr_accessor :git_url, :test_config
    def run
      if is_remote?
        require File.join(File.dirname(__FILE__), '/gems/minitest/lib/minitest/unit')
        require File.join(File.dirname(__FILE__), '/gems/test-unit/lib/test/unit/priority')
        require File.join(File.dirname(__FILE__), '/gems/test-unit/lib/test/unit/testcase')
        require File.join(File.dirname(__FILE__), '/gems/test-unit/lib/test/unit/assertions')
        require File.join(File.dirname(__FILE__), '/gems/test-unit/lib/test/unit')
        require File.join(File.dirname(__FILE__), '/gems/minitest/lib/minitest/autorun')
      end
        # Test::Unit.run = false
      MiniTest::Unit.runner = MiniTestWithHooks.new
      # g = Git.open(user_dir, :log => Logger.new(STDOUT))
      clone_dir = 'cloned'
      x = File.join(user_dir, clone_dir)
      p x
      if is_local?
        FileUtils.rm_rf(File.join(user_dir, clone_dir))
      end

      $abt_config = self.test_config

      g = Git.clone(git_url, clone_dir, :path => user_dir)
      Dir.glob(File.join(user_dir, clone_dir, 'test', 'test_*.rb')).each { |f|
        puts 'requiring ' + f.to_s
        require f
      }
    end

    def suite_results_output(options={})
      line_break = "\n"
      if options[:format] == 'html'
        line_break = "<br/>"
      end
      s = "Suite Results:#{line_break}"
      s << "#{@num_failed} failed out of #{@num_tests} tests.#{line_break}"
      if @num_failed > 0
        @failed.each do |f|
          s << "#{f.test_class}.#{f.test_method} failed: #{f.result.message}#{line_break}"
        end
      end
      s << "Test suite duration: #{duration}ms.#{line_break}"
      s
    end

    def duration
      ((@end_time.to_f - @start_time.to_f) * 1000.0).to_i
    end

    def time_in_ms(t)
      (t.to_f * 1000.0).to_i
    end

    # callbacks
    def on_complete

    end

  end

end
