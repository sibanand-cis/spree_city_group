class BookingPostalCode < ActiveRecord::Base
  attr_accessible :booking_group_id, :booking_postal_codes_id

  belongs_to :booking_group
end
