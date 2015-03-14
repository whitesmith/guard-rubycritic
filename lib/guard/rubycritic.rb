require "guard"
require "guard/plugin"
require "rubycritic"
require "rubycritic/generators/html_guard_report"

module Guard

  class Rubycritic < Plugin
    # Called once when Guard starts. Please override initialize method to init stuff.
    #
    # @raise [:task_has_failed] when start has failed
    # @return [Object] the task result
    #
    def start
      @rubycritic = ::Rubycritic.create
      @rubycritic.extend(AdditionalMethodsForGuard)
      UI.info "Guard::Rubycritic is critiquing"
    end

    # Default behaviour on file(s) changes that the Guard plugin watches.
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    # @return [Object] the task result
    #
    def run_on_changes(paths)
      report_location = report(critique(paths))
      UI.info "New critique at #{report_location}"
    end

    def critique(paths)
      @rubycritic.paths = paths
      @rubycritic.critique
    end

    def report(analysed_modules)
      ::Rubycritic::Generator::HtmlGuardReport.new(analysed_modules).generate_report
    end
  end

  module AdditionalMethodsForGuard
    # This is necessary to inject new paths into the RubyCritic Command class.
    # Otherwise we would have to create a new class instance everytime a user changed a file.
    attr_writer :paths
  end

end
