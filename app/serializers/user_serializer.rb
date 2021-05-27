class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :first_name, :last_name

  has_many :bookings
  has_many :rooms, through: :bookings
end
