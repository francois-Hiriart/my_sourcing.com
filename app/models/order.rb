class Order < ApplicationRecord
  belongs_to :product, polymorphic: true
  belongs_to :user
  CATEGORIES=%w[masque bande catheter seringue scalpel]
  # validates :product_quantity, presence: true
  # validates :product_quantity, numericality: { only_integer: true, greater_than: O }

end
