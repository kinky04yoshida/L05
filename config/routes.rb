Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :tweets
  root 'top#main'
  
  resources :top
  resources :likes
  #post 'likes', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
