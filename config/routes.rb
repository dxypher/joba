Joba::Application.routes.draw do
  root to: 'static_pages#home'

  get '/dashboard', :controller => 'dashboard', :action => 'index'
  get 'jobs', :controller => 'jobs', :action => 'show_all'
  get '/add-job', :controller => 'jobs', :action => 'create'
end
