Rails.application.routes.draw do

  root :to => 'application#home'
  # get "/login", to: 'login#new'
  # post "/login", to: 'login#create'
  #resources :login, only: [:new, :create]
  get "/login", to: 'login#new', as: "login"
  resources :login, only: [:new, :create]
  post "/login", to: 'login#create'
  delete "/logout", to: 'login#destroy'
  get "/register", to: 'users#new', as: "register"

  resources :skillsets
  resources :jobs
  resources :skills
  resources :users
  resources :developers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects
end
