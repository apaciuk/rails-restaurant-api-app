Rails.application.routes.draw do
  constraints ->(request) { request.format == :json } do
  resources :ingredients
  resources :dishes
  resources :restaurants
  end
  end
