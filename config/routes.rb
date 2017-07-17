Rails.application.routes.draw do
  root  to: 'static_pages#home', as: 'home'
  # get    '/login',   to: 'sessions#new', as: 'login'
  # post   '/login',   to: 'sessions#create', as: 'sessions'
  # delete '/logout',  to: 'sessions#destroy', as: 'logout'
  get '/about', to: 'static_pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch '/users/:user_id/profile/edit', to: 'profiles#edit'
  resources :movements
  resources :workouts
  # resources :users
  resources :users do
  resource :profile
  resources :sessions
  end
end
