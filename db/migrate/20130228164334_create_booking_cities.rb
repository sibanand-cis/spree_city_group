class CreateBookingCities < ActiveRecord::Migration
  def change
    create_table :booking_cities do |t|
      t.string :name
      t.integer :group_id
      t.integer :country_id

      t.timestamps
    end
  end
end
