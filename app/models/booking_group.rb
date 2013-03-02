class BookingGroup < ActiveRecord::Base
  attr_accessible :name
  
  has_many :booking_cities
end
