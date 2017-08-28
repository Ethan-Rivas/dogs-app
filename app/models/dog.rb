class Dog < ApplicationRecord
  has_one :races
  has_many :carts
  has_many :vaccines, through: :carts
end
