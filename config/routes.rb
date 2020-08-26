Rails.application.routes.draw do

  devise_for :users

  root to: "products#index"
  
  resources :users, only: [:new, :index, :create, :edit]
  resources :products
end



