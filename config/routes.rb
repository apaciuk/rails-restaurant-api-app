Rails.application.routes.draw do
  resources :measured_ingredients
  resources :ingredients
  resources :measurements
  resources :dishes
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
