Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/movements', to: 'movements#index'
  get '/movement/new', to: 'movements#new', as: 'new_movement'
  post '/movements/:id', to: 'movements#create'
  get '/movements/:id', to: 'movements#show', as: 'movement'

  get '/workouts', to: 'workouts#index'
  get '/workout/new', to: 'workouts#new', as: 'new_workout'
  post '/workout/:id', to: 'workouts#create'
  get 'workout/:id', to: 'workouts#show', as: 'workout'

  get '/users', to: 'users#index'
  get '/user/new', to: 'users#new', as: 'new_user'
  post '/users/:id', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_actor'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  
end
