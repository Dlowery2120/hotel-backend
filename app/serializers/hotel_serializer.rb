class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :img

  has_many :rooms
end
