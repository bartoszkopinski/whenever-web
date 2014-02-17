module Whenever
  class JobRunner
    def initialize job_id
      @job_id  = job_id.to_i
    end

    def run
      `#{command}`
    end

    def command
      job.output
    end

    protected

    def job
      Web.job_list.fetch(@job_id)
    end
  end
end
