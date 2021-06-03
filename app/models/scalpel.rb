class Scalpel < ApplicationRecord
  belongs_to :user
  has_many :orders, as: :product
end
