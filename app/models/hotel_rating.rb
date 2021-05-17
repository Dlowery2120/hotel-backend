class HotelRating < ApplicationRecord
  belongs_to :user_id
  belongs_to :hotel_id
end
