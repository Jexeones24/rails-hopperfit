Rails.application.routes.draw do
  root   'workouts#index'
  get    '/about',   to: 'static_pages#about'
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create', as: 'sessions'
  # get '/sessions',  to: 'sessions#destroy', as: 'logout'
  get '/logout',  to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movements
  resources :workouts
  resources :users

end
