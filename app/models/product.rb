class Product < ApplicationRecord
   
    has_many :reviews
    has_one :like


    validates :name  , :description , :price , :image , presence: true
 


end
