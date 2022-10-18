Rails.application.routes.draw do
  get 'top/main'
  resources :users
  root 'users#index'
  get 'users/new_user', to: 'users#new'
  post 'tweets', to: 'tweets#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
