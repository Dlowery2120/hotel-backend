class CreateHotelRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :hotel_ratings do |t|
      t.integer :customer_rating
      t.integer :stars
      t.integer :user_id
      t.integer :hotel_id
      t.timestamps
    end
  end
end
