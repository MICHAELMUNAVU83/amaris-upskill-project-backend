class Product < ApplicationRecord
    has_many :reviews
    has_one :like

end
