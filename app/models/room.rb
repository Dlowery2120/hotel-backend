class Room < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  belongs_to :hotel

end
