require 'whenever/patches/job'

module Whenever
  class WebJob
    include ActionView::Helpers::DateHelper
    attr_reader :interval

    def initialize job, interval
      @job      = job
      @interval = interval
    end

    delegate :output, :at, to: :@job

    def task
      @job.options[:task]
    end

    def description
      @job.options.fetch(:description) { task }
    end

    def interval
      distance_of_time_in_words(@interval).gsub('about', '')
    rescue ArgumentError
      @interval
    end

    def roles
      @job.roles.join(', ')
    end
  end
end
