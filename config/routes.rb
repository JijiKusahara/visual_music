Rails.application.routes.draw do
  devise_for :users
  
  root "songs#index"
  resources :users, only: [:edit, :update]
  resources :songs, only: [:new, :create, :destroy]
  resources :songcolors, only: [:index, :new, :create]
end
