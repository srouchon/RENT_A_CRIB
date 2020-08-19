Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:show] do
    resources :bookings, only: [:new, :create]
    resources :favorites, only: [:create]
  end

  resources :bookings, only: [:index, :destroy]
  resources :favorites, only: [:index, :destroy]
end
