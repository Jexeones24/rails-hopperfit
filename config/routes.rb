Rails.application.routes.draw do
  root  to: 'static_pages#home', as: 'home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/about', to: 'static_pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch '/users/:user_id/profile/edit', to: 'profiles#edit'
  resources :movements
  resources :workouts
  # resources :users
  resources :users do
  resource :profile
  end
end
