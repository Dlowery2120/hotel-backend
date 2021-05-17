class Booking < ApplicationRecord
    has_many :rooms
    has_many :hotels, through: :rooms
end
