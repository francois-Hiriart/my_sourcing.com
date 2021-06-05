class Catheter < ApplicationRecord
  belongs_to :user
  has_many :orders, as: :product
  CATHETER_CRITERIA=%w[prix marque model disponibilité]

  validates :name, presence: true
end
