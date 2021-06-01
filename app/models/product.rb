class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :picture

  validates :name, :category, :quantity, :unit_price_cents, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :category, :brand ],
    using: {
      tsearch: { prefix: true }
    }
end
