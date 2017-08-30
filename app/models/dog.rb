class Dog < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_one :races
  has_many :carts
  has_many :vaccines, through: :carts

  def image_url
      image.url
  end
end
