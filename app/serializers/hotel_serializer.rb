class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :stars, :address, :location, :img

  has_many :rooms
end
