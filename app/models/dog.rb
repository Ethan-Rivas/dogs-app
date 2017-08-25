class Dog < ApplicationRecord
  has_one :race
  has_many :vaccine
end
