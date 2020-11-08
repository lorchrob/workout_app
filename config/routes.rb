Rails.application.routes.draw do
  get 'static_pages/landing'
  get 'static_pages/about'
  get 'static_pages/log'
  get 'static_pages/generate'
  get 'static_pages/stats'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#landing"
end
