require 'rails'
require 'whenever'
require 'whenever/patches/job'
require 'whenever/patches/job_list'

module Whenever
  class Web < ::Rails::Engine
    engine_name 'whenever'
    isolate_namespace Whenever
  end
end
