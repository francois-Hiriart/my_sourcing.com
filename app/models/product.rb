class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user

  enum category: { masque: 1, bande: 2, catheter: 3, seringue: 4, scalpel: 5 }


  attr_accessor :query

end
