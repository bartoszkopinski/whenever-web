module Whenever
  class JobsController < ActionController::Base
    before_filter :list_jobs
    layout 'admin'

    def index
    end

    def run
      job = @job_list.web_jobs.fetch(params[:id].to_i)
      `#{job.command}`
      flash[:notice] = job.command
      redirect_to jobs_path
    end

    private

    def list_jobs
      @job_list = WebJobList.new(file: 'config/schedule.rb')
    end
  end
end
