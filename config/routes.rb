Rails.application.routes.draw do
  # Root
  root "static_pages#landing"
  
  # Resources
  resources :users
  resources :runs
  resources :ab_workouts
  resources :weight_workouts
  
  # Static pages
  get '/landing', to: 'static_pages#landing'
  get '/about', to: 'static_pages#about'
  get '/log', to: 'static_pages#log_run'
  get '/generate', to: 'static_pages#generate'
  
  # Sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Users
  get '/signup', to: 'users#new'
  
  get 'parse_input', to: 'static_pages#generate_parse'
end
