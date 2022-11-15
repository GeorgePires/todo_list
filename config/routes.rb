Rails.application.routes.draw do
  resources :tasks
  devise_for :users

  patch "tasks/:id/resolved", to: "tasks#is_resolved"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "tasks#index"
end
