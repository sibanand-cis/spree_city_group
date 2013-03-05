class AddColumnToBookingGroup < ActiveRecord::Migration
  def change
  	add_column :booking_groups,:pickup_price,:float
  	add_column :booking_groups,:dropoff_price,:float
  end
end
