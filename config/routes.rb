Rails.application.routes.draw do
  resources :cars
  resources :vehicles
  resources :master_start_years
  resources :master_variants
  resources :brands
  resources :service_categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
