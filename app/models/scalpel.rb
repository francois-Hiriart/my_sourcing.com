class Scalpel < ApplicationRecord
  belongs_to :user
  has_many :orders, as: :product
  SCALPEL_CRITERIA=%w[prix marque model disponibilité]
end
