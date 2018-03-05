Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :companies, only: [:new, :create]
  resources :evaluations, only: [:new, :create]
  root 'users#show'
  end

