class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :product_type

  validates :product_type_id, presence: true
  validates :name, presence: true, length: { maximum: 165 }
end
