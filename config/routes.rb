Rails.application.routes.draw do
  get '/login', to: "auth/login"
  get '/auto_login', to: "auth#auto_login"
  get '/user_is_authed', to: "auth#user_is_authed"
  resources :categories
  resources :libraries
  resources :daily_entries
  resources :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
