class User < ApplicationRecord
  has_secure_password
  has_many :purchasings
  has_many :items, through: :purchasings

  validates_presence_of :email, :first_name, :last_name
  validates :email, uniqueness: true
end