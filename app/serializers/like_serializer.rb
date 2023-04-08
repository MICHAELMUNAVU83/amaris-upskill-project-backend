class LikeSerializer < ActiveModel::Serializer
  attributes :id, :count
  belongs_to :product
end
