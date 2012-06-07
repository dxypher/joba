Joba::Application.routes.draw do
  root to: 'users#new'
  # get '/jobs/new', :controller => 'companies', :action => 'new_job'
  # post 'jobs', :controller => 'companies', :action => 'create_job'
  resources :users
  resources :dashboards
  resources :jobs  
    get '/jobs/delete/:id', :controller => "jobs", :action => "delete"
    get '/companies/delete/:id', :controller => "companies", :action => "delete"
  resources :companies
  post "sessions/create"  
  resources :sessions
  
  


end
