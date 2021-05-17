class Room < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  belongs_to :hotel
  belongs_to :booking 
end
