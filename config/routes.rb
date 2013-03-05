Spree::Core::Engine.routes.draw do

  resources :booking_postal_codes


  resources :booking_groups
  resources :booking_countries 
  resources :booking_cities

  


  namespace :admin do
  	resources :booking_groups
  	resources :booking_countries
  	resources :booking_cities
    resources :booking_postal_codes
  end


  # Add your extension routes here
end
