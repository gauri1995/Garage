Rails.application.routes.draw do
  match ':controller/:action.:format', via: [:get, :post]
  resources :user_vehicles
  resources :service_categories
  resources :services
  resources :cars
  resources :vehicles
  resources :master_start_years
  resources :master_variants
  resources :brands
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
