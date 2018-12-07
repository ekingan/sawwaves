class ProductType < ApplicationRecord
  has_many :products, dependent: :restrict_with_exception

  validates :name, presence: true, length: { :maximum => 255 }
end
