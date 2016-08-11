Rails.application.routes.draw do
  resources :likes
  resources :dishes

  post '/api/likes', to: 'api/likes#create'

  # get '/dishes/new', to: 'dishes#new'
  # post '/dishes', to: 'dishes#create'
  # get '/dishes/:id', to: 'dishes#show'
end
