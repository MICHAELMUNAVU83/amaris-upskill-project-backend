class LikeSerializer < ActiveModel::Serializer
  attributes :id, :count
  has_one :product
end
