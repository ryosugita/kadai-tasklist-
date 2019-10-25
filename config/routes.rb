Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  delete "logout", to: "sessions#destroy"
  resources :tasks
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: "tasks#index"
  
end
