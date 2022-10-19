Rails.application.routes.draw do
  resources :useres
  resources :tweets
  root 'top#main'

  get 'top/main'
  post 'top/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
