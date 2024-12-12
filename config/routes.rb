Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :update, :destroy]
  end

  resources :rooms

  root to: "rooms#index"

end

  # resources :bookings, only: [:new, :create]
