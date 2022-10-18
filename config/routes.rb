Rails.application.routes.draw do
  get 'top/main'
  resources :users
  resources :tweets
  root 'users#index'
  get 'tweets/new', to: 'tweets#new'
  post 'tweets', to: 'tweets#create'
  delete 'tweets/:id', to: 'tweets#destroy'
  get 'users/list', to: 'users#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
