Rails.application.routes.draw do
  devise_for :users
  
  root "songs#index"
  resources :users, only: [:edit, :update]
  resources :songs, only: [:new, :create, :destroy] do
    resources :songcolors, only: [:index, :new, :create]
  end
  resources :discs,only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
