Rails.application.routes.draw do
  
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
