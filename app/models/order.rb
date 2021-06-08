class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  # belongs_to :seringues, foreign_key: 'product_id', -> { where( orders: { product_type: "Seringue" })}
  # validates :product_quantity, presence: true
  # validates :product_quantity, numericality: { only_integer: true, greater_than: O }

  # def self.from_user(user)
  #   Order.includes(:seringues).where(seringues: { user_id: user.id })
  # end
end
