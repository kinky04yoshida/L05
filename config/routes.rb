Rails.application.routes.draw do
  get 'top/main'
  resources :useres
  resources :tweets
  root 'top#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
