Rails.application.routes.draw do
  get 'users/show'
  get 'comments/create'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'prototypes#index'
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create
  end
  resources :users, only: :show
end
