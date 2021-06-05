class Masque < ApplicationRecord
  belongs_to :user
  has_many :orders, as: :product
  MASQUE_CRITERIA=%w[prix marque model disponibilité]
end
