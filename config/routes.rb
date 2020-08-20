Rails.application.routes.draw do

  # devise_for :products
  devise_for :users

  root to: "items#index"
  resources :users, only: [:new, :index, :create, :edit]
  resources :items, only: [:new, :index, :edit]
end



