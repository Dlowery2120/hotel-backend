class CreateHotelRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :hotel_ratings do |t|
      t.integer :customer_rating
      t.integer :stars
      t.references :user_id, null: false, foreign_key: true
      t.references :hotel_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
