Rails.application.routes.draw do
  devise_for :users
  
  root "songs#index"
  resources :users, only: [:edit, :update]
  resources :songs, only: [:new, :create, :destroy] do
    resources :songcolors, only: [:index, :new, :create]
  end
  resources :discs,only: [:create, :destroy]do
    resources :song_discs,only: [:create, :destroy]
  end
end
