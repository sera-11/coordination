Rails.application.routes.draw do
  resources :events
  resources :members
  resources :tasks
  resources :organizations
  resources :meeting_minutes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"
  
end
