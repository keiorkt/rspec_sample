Rails.application.routes.draw do
  root 'home#index'
 
  resources :admins
  resources :blogs
  resources :comments
  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'admins#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
