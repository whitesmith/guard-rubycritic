require "rubycritic/generators/html_report"
require "rubycritic/generators/html/current_code_file"

module Rubycritic
  module Generator

    class HtmlGuardReport < HtmlReport
      def generate_report
        create_directories_and_files
        copy_assets_to_report_directory
        report_location
      end

      private

      def generators
        file_generator
      end

      def file_generator
        @file_generator ||= Html::CurrentCodeFile.new(@analysed_modules.first)
      end

      def report_location
        file_generator.file_href
      end
    end

  end
end
