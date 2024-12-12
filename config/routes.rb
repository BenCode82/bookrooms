Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]

  resources :rooms

  resources :bookings, only: [:new, :create, :update, :destroy]

  root to: "rooms#index"

end

  # resources :bookings, only: [:new, :create]
