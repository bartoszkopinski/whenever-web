require 'rails'
require 'whenever'

module Whenever
  class Web < ::Rails::Engine
    engine_name 'whenever'
    isolate_namespace Whenever
  end
end
