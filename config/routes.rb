Rails.application.routes.draw do
  resources :users
  resources :developers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  resources :projects
end
