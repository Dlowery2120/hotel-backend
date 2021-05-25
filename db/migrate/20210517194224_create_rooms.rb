class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_num
      t.integer :price
      t.string :suite
      t.integer :hotel_id
      t.timestamps
    end
  end
end
