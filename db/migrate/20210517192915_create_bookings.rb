class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :cost
      t.integer :reservation_number
      t.date :check_in
      t.date :check_out
      t.integer :length_of_stay
      t.string :guest_name

      t.timestamps
    end
  end
end
