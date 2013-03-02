Spree::Core::Engine.routes.draw do

  resources :booking_groups
  resources :booking_countries 
  resources :booking_cities

  


  namespace :admin do
  	resources :booking_groups
  	resources :booking_countries
  	resources :booking_cities
  end


  # Add your extension routes here
end
