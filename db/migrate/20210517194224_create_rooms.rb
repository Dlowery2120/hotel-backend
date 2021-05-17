class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_num
      t.integer :price
      t.string :type
      t.integer :capacity

      t.timestamps
    end
  end
end
