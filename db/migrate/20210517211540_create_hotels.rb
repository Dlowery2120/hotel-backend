class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :stars
      t.string :address
      t.string :location
      t.string :img
      t.timestamps
    end
  end
end
