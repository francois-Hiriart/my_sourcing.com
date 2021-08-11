class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :rating
  # belongs_to :seringues, foreign_key: 'product_id', -> { where( orders: { product_type: "Seringue" })}
  validates :product_quantity, presence: true
  # validates :product_quantity, numericality: { only_integer: true, greater_than: O }

  RATINGS = [1, 2, 3, 4, 5]
  # def self.from_user(user)
  #   Order.includes(:seringues).where(seringues: { user_id: user.id })
  # end

  # def self.by_category(category)
  #   joins(:product).where(products: { category: category})
  # end
end
