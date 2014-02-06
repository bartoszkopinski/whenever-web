require 'whenever/job_list'

module Whenever
  class JobList
    def desc description
      @options[:description] = description
    end

    def schedule
      @jobs
    end
  end
end
