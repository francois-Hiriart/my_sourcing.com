class Bande < ApplicationRecord
  belongs_to :user
  has_many :orders, as: :product
end
