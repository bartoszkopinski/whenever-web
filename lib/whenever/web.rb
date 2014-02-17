require 'rails'
require 'whenever'
require 'whenever/patches/job'
require 'whenever/patches/job_list'

module Whenever
  class Web < ::Rails::Engine
    engine_name self.name.deconstantize
    isolate_namespace Whenever

    class << self
      def config
        @config ||= Whenever::WebConfig.new
      end

      def job_list
        Whenever::WebJobList.new(file: config.schedule_file)
      end
    end
  end
end
