class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :price
  has_many :reviews
  has_many :like
end
