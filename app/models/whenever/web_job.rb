require 'whenever/patches/job'

module Whenever
  class WebJob
    include ActionView::Helpers::DateHelper
    attr_reader :interval, :job

    def initialize job, interval
      @job      = job
      @interval = interval
    end

    def description
      @job.options.fetch(:description) {
        @job.options[:task]
      }
    end

    def command
      replacements = @job.options.map{ |k, v| [":#{k}", v] }.to_h
      @job.template.gsub(/:\w+/, replacements)
    end

    def interval
      distance_of_time_in_words(@interval)
    end
  end
end
