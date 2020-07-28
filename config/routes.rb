Rails.application.routes.draw do
  devise_for :users
  
  root "songcolor#index"
  resources :users, only: [:edit, :update]
  resources :songs, only: [:index,:new,:create, :destroy]
end
