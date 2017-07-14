Rails.application.routes.draw do
  root to: 'welcome#index'
  get    '/about',   to: 'static_pages#about'
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create', as: 'sessions'
  get '/logout',  to: 'sessions#destroy', as: 'logout'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movements
  resources :workouts
  resources :users
  resources :profiles

end
