class Masque < ApplicationRecord
  belongs_to :users
  has_many :orders, as: :product
end
