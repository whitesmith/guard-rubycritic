require "guard"
require "guard/plugin"
require "rubycritic"
require "rubycritic/reporters/mini"

module Guard

  class Rubycritic < Plugin
    # Called once when Guard starts. Please override initialize method to init stuff.
    #
    # @raise [:task_has_failed] when start has failed
    # @return [Object] the task result
    #
    def start
      @rubycritic = ::Rubycritic::Orchestrator.new
      UI.info "Guard::Rubycritic is critiquing"
    end

    # Default behaviour on file(s) changes that the Guard plugin watches.
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    # @return [Object] the task result
    #
    def run_on_changes(paths)
      analysed_files = @rubycritic.critique(paths)
      report_location = ::Rubycritic::Reporter::Mini.new(analysed_files).generate_report
      UI.info "New critique at #{report_location}"
    end
  end

end
