Rails.application.routes.draw do

  resources :users
  # resources :leads # shortcut

  get '/leads', to: 'leads#index'
  post '/leads', to: 'leads#create'

  # to get/show the form
  get '/leads/new', to: 'leads#new'

  # actually creating a new lead in the db
  post '/leads', to: 'leads#create'

    # controller name # method name
    # controller name # action

  get '/', to: 'pages#home'
  post '/new_lead', to: 'pages#new_lead'
  get '/thanks', to: 'pages#thanks'                
  get '/about', to: 'pages#about'
  get '/donate', to: 'pages#donate'

end
