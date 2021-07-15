Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :libraries
      resources :daily_entries
      resources :users, only: [:create, :profile]
      get 'auth/create'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
