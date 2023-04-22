class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :location, :phone_number, presence: true
  
end
