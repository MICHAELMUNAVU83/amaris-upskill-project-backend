class BookingSerializer < ActiveModel::Serializer
  attributes :id, :location, :phone_number
  has_one :product
  has_one :user
end
