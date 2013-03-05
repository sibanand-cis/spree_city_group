class BookingGroup < ActiveRecord::Base
  attr_accessible :name,:pickup_price,:dropoff_price
  
  has_many :booking_postal_codes
end
