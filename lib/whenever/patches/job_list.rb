require 'whenever/job_list'

module Whenever
  class JobList
    public :environment_variables

    def desc description
      @options[:description] = description
    end
  end
end
