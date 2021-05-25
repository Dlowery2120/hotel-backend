class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
        t.integer :reservation_number
        t.date :check_in
        t.date :check_out
        t.integer :user_id
        t.integer :room_id
      t.timestamps
    end
  end
end
