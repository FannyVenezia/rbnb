Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :planets do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :edit, :index, :show]
  resources :reviews, only: [:destroy, :edit, :index, :show]
  resources :foods, only: [:new, :create, :index]
  get 'thanks', to: 'planets#thanks'
end
