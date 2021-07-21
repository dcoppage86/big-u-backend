Rails.application.routes.draw do
  post '/api/v1/login', to: "api/v1/auth#create"
  delete '/api/v1/logout', to: "api/v1/auth#destroy"
  get '/api/v1/get_current_user', to: "api/v1/auth#get_current_user"
  namespace :api do
    namespace :v1 do
      resources :collections, only: [:index]
      resources :categories, only: [:index]
      resources :daily_entries, only: [:index, :create, :update, :destroy]
      resources :comments, only: [:index, :create, :destroy]
      resources :books, only: [:index, :create, :destroy]
      resources :users, only: [:index, :show, :create, :destroy]
      get 'auth/create'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
