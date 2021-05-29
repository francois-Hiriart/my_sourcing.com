class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :product_quantity, presence: true
  validates :product_quantity, numericality: { only_integer: true, greater_than: O }

end
