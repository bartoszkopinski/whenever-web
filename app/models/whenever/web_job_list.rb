require 'whenever/patches/job_list'

module Whenever
  class WebJobList < JobList
    attr_reader :set_variables

    def web_jobs
      @jobs.flat_map do |interval, jobs|
        jobs.map do |job|
          WebJob.new(job, interval)
        end
      end
    end

    def error_log
      File.read(set_variables[:output][:error])
    end

    def standard_log
      File.read(set_variables[:output][:standard])
    end
  end
end
