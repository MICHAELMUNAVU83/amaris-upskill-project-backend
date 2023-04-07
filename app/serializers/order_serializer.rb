class OrderSerializer < ActiveModel::Serializer
  attributes :id, :location, :phone_number
  has_one :user
  has_one :product
end
