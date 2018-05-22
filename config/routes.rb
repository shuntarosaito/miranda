Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  resources :users, only: :show
  resources :companies, only: [:new, :create, :destroy]
  resources :evaluations, only: [:new, :create, :edit, :update, :destroy]
  resources :display_evaluations, only: [:new, :create, :edit, :update]
  root 'users#show'
end
