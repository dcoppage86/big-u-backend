Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :collections
      resources :categories
      resources :daily_entries
      resources :comments
      resources :books
      resources :users
      get 'auth/create'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
