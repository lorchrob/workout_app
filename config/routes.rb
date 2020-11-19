Rails.application.routes.draw do
  # Root
  root "static_pages#landing"
  
  # Resources
  resources :users
  resources :runs
  
  # Static pages
  get '/landing', to: 'static_pages#landing'
  get '/about', to: 'static_pages#about'
  get '/log', to: 'static_pages#log_run'
  get '/generate', to: 'static_pages#generate'
  get '/stats', to: 'static_pages#stats'

  # Users
  get '/signup', to: 'users#new'
  
  # Runs
  get '/log_exercise', to: 'runs#new'
end
