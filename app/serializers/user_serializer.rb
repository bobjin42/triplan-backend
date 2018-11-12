class UserSerializer < ActiveModel::Serializer
  attributes :username, :id, :name, :email_address
  has_many :trips, serializer:TripSerializer
end
