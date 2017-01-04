Rails.application.routes.draw do
  
  # get '/login', to: 'sessions#new', as: 'login'
  # post '/sessions', to: 'sessions#create'

  # get '/logout', to: 'sessions#destroy', as: 'logout'
  
  resources :sessions, :secrets
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/secrets' => 'secrets#show'
  #get 'login' => 'sessions#new'
end
