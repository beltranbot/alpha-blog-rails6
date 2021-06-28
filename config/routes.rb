Rails.application.routes.draw do
  root to: "home#index"
  resources :articles
  get "about", to: "about#index"
  get "signup", to: "users#new"
  resources :users, except: [:new]
end
