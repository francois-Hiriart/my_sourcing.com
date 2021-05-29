class Product < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, :category, :quantity, :unit_price_cents, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: O }
end
