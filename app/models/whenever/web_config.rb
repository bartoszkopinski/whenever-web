module Whenever
  class WebConfig
    attr_accessor :schedule_file, :parent_controller, :layout

    def initialize
      @schedule_file     = 'config/schedule.rb'
      @parent_controller = 'Whenever::WebController'
      @layout            = 'admin'
    end

    def parent_controller
      @parent_controller.to_s.constantize
    end
  end
end
