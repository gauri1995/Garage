Rails.application.routes.draw do
  get "/terms" => "brands#terms", :as => :terms
  get "/faq" => "brands#faq", :as => :faq
  get "/landing" => "brands#landing", :as => :landing
  get "/ourprofile" => "brands#ourprofile", :as => :ourprofile
  get "/admin_landing" => "brands#admin_landing", :as => :admin_landing
  get "/coadmin" => "brands#coadmin", :as => :coadmin
  get "/dynamic" => "vehicles#dynamic"

  root to: 'brands#landing'
  resources :user_vehicles
  resources :service_categories
  resources :services
  resources :cars
  resources :vehicles
  resources :master_start_years
  resources :master_variants
  resources :brands
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
