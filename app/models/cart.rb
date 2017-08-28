class Cart < ApplicationRecord
  belongs_to :dogs
  belongs_to :vaccines
end
