Rails.application.routes.draw do

  get 'rooms/index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :rooms do
    resources :messages
  end
  resources :users
  root 'rooms#index'
end
