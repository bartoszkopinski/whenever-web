require 'whenever/patches/job_list'

module Whenever
  class WebJobList < JobList
    include Enumerable
    attr_reader :set_variables, :job_types

    delegate :fetch, :each, to: :web_jobs

    def web_jobs
      @web_jobs ||= begin
        @jobs.flat_map do |interval, jobs|
          jobs.map do |job|
            WebJob.new(job, interval)
          end
        end
      end
    end

    def logs
      @logs ||= fetch_logs(@set_variables[:output])
    end

    alias_method :old_job_type, :job_type

    def job_type name, template
      (@job_types ||= {})[name] = template
      old_job_type name, template
    end

    protected

    def fetch_logs path, kind = 'standard'
      case path
      when Hash
        path.map{ |k, v| fetch_logs(v, k) }.inject(:merge)
      when String
        { kind.to_s => Log.new(kind, path) }
      else
        {}
      end
    end
  end
end
