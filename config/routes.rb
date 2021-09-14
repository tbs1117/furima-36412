Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:new, :create]
  resources :items, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :orders, only: [:index, :new, :create]
end
