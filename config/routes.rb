Rails.application.routes.draw do
  resources :useres
  resources :tweets
  root 'top#main'

  resources :top
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
