module Whenever
  class LogsController < Web.config.parent_controller
    def clear
      log.clear
      redirect_to jobs_path, notice: t('.success', kind: log.kind)
    end

    protected

    def log
      @log ||= Web.job_list.logs.fetch(params[:kind])
    end
  end
end
