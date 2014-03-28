require "guard"
require "guard/plugin"
require "rubycritic"

module Guard

  class Rubycritic < Plugin
    # Called once when Guard starts. Please override initialize method to init stuff.
    #
    # @raise [:task_has_failed] when start has failed
    # @return [Object] the task result
    #
    def start
      @rubycritic = ::Rubycritic::Rubycritic.new
      UI.info "Guard::Rubycritic is critiquing"
    end

    # Default behaviour on file(s) changes that the Guard plugin watches.
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    # @return [Object] the task result
    #
    def run_on_changes(paths)
      UI.info "New critique at #{@rubycritic.critique(paths)}"
    end
  end

end
