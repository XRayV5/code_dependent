Rails.application.routes.draw do
  resources :users
  resources :likes
  resources :dishes

  namespace :api do
    resources :dishes
  end

  # getting the login form
  get '/session/new', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'


  post '/api/likes', to: 'api/likes#create'

  # get '/api/dishes', to: 'api/dishes#index'

  # get '/dishes/new', to: 'dishes#new'
  # post '/dishes', to: 'dishes#create'
  # get '/dishes/:id', to: 'dishes#show'
end
