Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/create'
  resources :categories
  resources :libraries
  resources :daily_entries
  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
