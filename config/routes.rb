Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/movements', to: 'movements#index', as: 'movements'
  get '/movements/new', to: 'movements#new', as: 'new_movement'
  post '/movements', to: 'movements#create'
  get '/movements/:id', to: 'movements#show', as: 'movement'

  resources :hoppers, :path => 'workouts'

  # # get '/workouts', to: 'workouts#index', as: 'workouts'
  # get '/workouts/new', to: 'workouts#new', as: 'new_workout'
  # post '/workouts', to: 'workouts#create'
  # get 'workouts/:id', to: 'workouts#show', as: 'workout'

  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

end
