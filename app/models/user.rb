class User < ApplicationRecord
    has_many :bookings
    has_many :rooms, through: :bookings

    has_many :hotel_ratings
    has_many :hotels, through: :hotel_ratings
end
