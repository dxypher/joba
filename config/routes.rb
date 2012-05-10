Joba::Application.routes.draw do
  root to: 'static_pages#home'

  resources :dashboard
  resources :jobs  
    get '/jobs/delete/:id', :controller => "jobs", :action => "delete"
  resources :companies  
  
  


end
