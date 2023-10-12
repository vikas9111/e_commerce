Rails.application.routes.draw do
  resources :attribute_definitions, except: [:show]
  resources :products
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
