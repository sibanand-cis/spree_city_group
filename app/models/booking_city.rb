class BookingCity < ActiveRecord::Base
  attr_accessible :booking_country_id,:booking_group_id, :name

  belongs_to :booking_country
  belongs_to :booking_group
 
end
