Whenever::Web.routes.draw do
  get '/', to: 'jobs#index', as: :jobs
  get 'job/:id/run', to: 'jobs#run', as: :run_job
  get 'log/:kind/clear', to: 'logs#clear', as: :clear_log
end
