Joba::Application.routes.draw do
  root to: 'static_pages#home'

  get '/dashboard', :controller => 'dashboard', :action => 'index'
  get '/jobs', :controller => 'jobs', :action => 'list'
  get '/jobs/:id', :controller => 'jobs', :action => 'show'
end
