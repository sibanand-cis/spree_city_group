class CreateBookingGroups < ActiveRecord::Migration
  def change
    create_table :booking_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
