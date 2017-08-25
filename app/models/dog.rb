class Dog < ApplicationRecord
  has_one :races
  has_many :vaccines
end
