Whenever::Web.routes.draw do
  get '/', to: 'jobs#index', as: :jobs
  get 'job/:id/run', to: 'jobs#run', as: :run_job
end
