Rails.application.routes.draw do
  get 'top/main'
  resources :users
  resources :tweets
  root 'users#index'
  get 'tweets/new', to: 'tweets#new'
  post 'tweets', to: 'tweets#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
