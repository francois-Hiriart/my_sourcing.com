class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  enum category: [ "masque", "bande", "catheter", "seringue", "scalpel" ]
end
