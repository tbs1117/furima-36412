Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:new, :create, :edit, :update]
  resources :items, only: [:new, :create]
end
