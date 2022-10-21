Rails.application.routes.draw do
  root 'top#main'
  resources :tweets
  post '/top/login'
  get '/top/logout'
  get '/top/main'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  #post '/users/new', to: 'users/create'
  get '/users/list'
  #resources :top
  resources :likes
  #post 'likes', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
