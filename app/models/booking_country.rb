class BookingCountry < ActiveRecord::Base
  attr_accessible  :name
  
  has_many :booking_cities

  validates :name ,:presence => true , :uniqueness => true

end
