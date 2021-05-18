class Hotel < ApplicationRecord
    has_many :hotel_ratings
    has_many :users, through: :hotel_ratings
end
