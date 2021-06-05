class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :masques, dependent: :destroy
  has_many :bandes, dependent: :destroy
  has_many :catheters, dependent: :destroy
  has_many :scalpels, dependent: :destroy
  has_many :seringues, dependent: :destroy
  has_many :orders, dependent: :destroy

  # validates :role, :company_name, :vat_number, :siret_number, presence: true

end
