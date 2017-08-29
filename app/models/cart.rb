class Cart < ApplicationRecord
  belongs_to :dogs, optional: true
  belongs_to :vaccines, optional: true
end
