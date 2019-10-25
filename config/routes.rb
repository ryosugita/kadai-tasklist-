Rails.application.routes.draw do
  
  delete "logout", to: "sessions#destroy"
  resources :tasks
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  root to: "tasks#index"
  
end
