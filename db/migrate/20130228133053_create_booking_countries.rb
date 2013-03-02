class CreateBookingCountries < ActiveRecord::Migration
  def change
    create_table :booking_countries do |t|
      t.string :name
      t.integer :group_id

      t.timestamps
    end
  end
end
