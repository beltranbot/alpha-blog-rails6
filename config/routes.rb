Rails.application.routes.draw do
  root to: "home#index"
  resources :articles
  get "about", to: "about#index"
  get "signup", to: "users#new"
  resources :users, except: [:new]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
