Rails.application.routes.draw do

  root to: 'root#index'

  resources :entries

  get "/home", to: "root#index"


  get "/signup", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:username", to: "users#show", as: :user


  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
end
