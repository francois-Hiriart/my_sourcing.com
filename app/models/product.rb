class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  has_one_attached :picture
  has_many :ratings, through: :orders


  validates :name, :description, :unit_price_cents, :available_quantity, :brand, presence: true

  # scope :filter_by_price, ->(prices) { where(unit_price_cents: prices[1]) }

  enum category: { gant: 1, masque: 2, bande: 3, catheter: 4, seringue: 5, scalpel: 6 }

  attr_accessor :query

  BRANDS = ["Honeywell", "Z Plus", "Jayashree", "Z Plus", "Phoenix", "3M", "NMmedical", "Medical Equipment India", "Rubber CATH Embryo Transfer Catheter", "C V Technologies Pvt Ltd", "UROMED", "distrimed", "Ethicon (Johnson & Johnson)", "Choice of Surgeon, Amkay", "Ribbel", "Mowell", "Terumo", "Arria Industries", "Expert Labo", "Shubham Pharmaceuticals", "JMS Range Products", "Medicare", "Apothecaries Sundries Manufacturing Co", "BSN Medical", "Becton Dickinson", "Braun Medical", "Topographix Equip", "PIC"]

  UNIT_PRICE_CENTS = {
    "< 0,99" => 0..0.99,
    "1 - 9,99" => 1..9.99,
    "10 - 14,99" => 10..14.99,
    "15 - 19,99" => 15..19.99,
    "< 20" => 20..
  }

  AVAILABLE_QUANTITIES = {
    "< 999" => 0..999,
    "1000 - 4999" => 1000..4999,
    "5000 - 9999" => 5000..9999,
    "10000 - 19999" => 10000..19999,
    "< 20000" => 20000..
  }

   AVERAGE_RATING = {
    "< 0,9" => 0..0.9,
    "1,0 - 1.9" => 1.0..1.9,
    "2,0 - 2,9" => 2.0..2.9,
    "3,0 - 3,9" => 3.0..3.9,
    "4,0 - 4,9" => 4.0..4.9,
  }

  def self.filter_by_price(prices)
    ranges = prices.map { |price| UNIT_PRICE_CENTS[price] }
    where(unit_price_cents: ranges)
  end

  def self.filter_by_quantity(quantities)
    ranges = quantities.map { |quantity| AVAILABLE_QUANTITIES[quantity] }
    where(available_quantity: ranges)
  end

end
