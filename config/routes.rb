Rails.application.routes.draw do

  root 'users#index'

  #user signup
  get '/', to: 'users#index', as: 'home'
  post '/signup', to: 'users#create', as: 'signup'
  get '/info', to: 'users#info'
  get '/education', to: 'users#education'

  #user login
  post '/login', to: 'sessions#create', as:'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  #News
  get '/news/:id', to: 'news#show', as: 'news'
  get '/news/edit/:id', to: 'news#edit', as: 'edit_news'
  put '/news/update/:id', to: 'news#update', as: 'update_news'
  get '/new/news', to:'news#new', as: 'news_page'
  post '/new/create', to: 'news#create', as: 'create_news'

  #ThreeW
  get '/edit/wh/:id', to: 'threews#edit', as: 'edit_wh'
  put '/update/wh/:id', to: 'threews#update', as: 'update_wh'

  #Direction Page
  get '/direction', to: 'directions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
