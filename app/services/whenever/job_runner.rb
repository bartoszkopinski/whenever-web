module Whenever
  class JobRunner
    def initialize job_id
      @job_id  = job_id.to_i
    end

    def run
      `#{environment_variables} #{command}`
    end

    def command
      web_job.output
    end

    protected

    def web_job
      @web_job ||= Web.job_list.fetch(@job_id)
    end

    def environment_variables
      @environment_variables ||= Web.job_list.environment_variables
    end
  end
end
