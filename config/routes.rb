Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :planets do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :edit, :index, :show]
  get 'recap', to: 'planets#recap'
end
