module Whenever
  class DashboardController < ActionController::Base
    def index
      schedule = Whenever::JobList.new(file: 'config/schedule.rb').schedule
      @jobs = schedule.flat_map{ |i, jobs| jobs.map{ |job| { interval: i, job: job } } }
    end
  end
end
