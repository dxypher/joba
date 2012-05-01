Joba::Application.routes.draw do
  root to: 'static_pages#home'

  get '/dashboard', :controller => 'dashboard', :action => 'index'

  get '/jobs', :controller => 'jobs', :action => 'list'

  get '/jobs/new', :controller => 'jobs', :action => 'new'
  get '/jobs/:id', :controller => 'jobs', :action => 'show'

  post '/jobs', :controller => 'jobs', :action => 'create'
  get '/jobs/edit/:id', :controller => 'jobs', :action => 'edit'
  
  put '/jobs/:id', :controller => 'jobs', :action => "update"

  get '/jobs/delete/:id', :controller => "jobs", :action => "delete"
  delete 'jobs/:id', :controller => 'jobs', :action => 'destroy'

end
