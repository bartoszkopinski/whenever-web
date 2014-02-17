module Whenever
  module JobsHelper
    def job_list
      @job_list ||= Web.job_list
    end

    def method_missing(method, *args, &block)
      main_app.send(method, *args, &block)
    rescue NoMethodError
      super
    end
  end
end
