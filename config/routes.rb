Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"

  resources :items
  resources :warehouses
  resources :item_warehouses, only: [:new, :create, :edit, :update]
end
