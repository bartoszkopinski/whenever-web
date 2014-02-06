require 'whenever/patches/job_list'

module Whenever
  class WebJobList < JobList
    def web_jobs
      schedule.flat_map do |interval, jobs|
        jobs.map do |job|
          WebJob.new(job, interval)
        end
      end
    end
  end
end
