Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movements
  resources :workouts
  resources :users

end
