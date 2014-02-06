module Whenever
  class JobsController < ActionController::Base
    layout 'admin'

    def index
    end

    def run
      `#{jobs.fetch(params[:id].to_i).command}`
      redirect_to jobs_path
    end

    private

    def jobs
      WebJobList.new(file: 'config/schedule.rb').web_jobs
    end
    helper_method :jobs
  end
end
