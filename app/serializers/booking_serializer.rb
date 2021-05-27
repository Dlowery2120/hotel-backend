class BookingSerializer < ActiveModel::Serializer
  attributes :id, :reservation_number, :check_in, :check_out, :room_id, :user_id

  belongs_to :room
  belongs_to :user

end
