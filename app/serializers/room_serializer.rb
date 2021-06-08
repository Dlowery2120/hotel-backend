class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :price, :suite, :img, :hotel_id

  belongs_to :hotel
end
