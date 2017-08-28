class Vaccine < ApplicationRecord
  has_many :carts
  has_many :dogs, through: :carts
end
