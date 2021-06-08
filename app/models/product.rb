class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  enum category: [ "masque", "bande", "catheter", "seringue", "scalpel" ]
end
