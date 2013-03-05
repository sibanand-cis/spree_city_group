class RenameColumnBookingPostalCode < ActiveRecord::Migration
  def change
  	rename_column :booking_postal_codes,:name,:booking_postal_codes_id
  end

 
end
