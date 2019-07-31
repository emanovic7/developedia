Rails.application.routes.draw do

  # get "/login", to: 'login#new'
  # post "/login", to: 'login#create'
  resources :login, only: [:new, :create]
  resources :skillsets
  resources :skills
  resources :users
  resources :developers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  resources :projects
end
