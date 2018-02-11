Rails.application.routes.draw do

  root 'users#index'

  #user signup
  get '/', to: 'users#index', as: 'home'
  post '/signup', to: 'users#create', as: 'signup'
  get '/direction', to: 'users#direction'
  get '/info', to: 'users#info'
  get '/education', to: 'users#education'

  #user login
  post '/login', to: 'sessions#create', as:'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end