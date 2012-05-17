Joba::Application.routes.draw do
  root to: 'static_pages#home'
  # get '/jobs/new', :controller => 'companies', :action => 'new_job'
  # post 'jobs', :controller => 'companies', :action => 'create_job'
  resources :dashboard
  resources :jobs  
    get '/jobs/delete/:id', :controller => "jobs", :action => "delete"
  resources :companies  
  
  


end
