class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :score
  has_one :product
end
