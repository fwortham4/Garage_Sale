class Item < ApplicationRecord
  has_many :purchasings
  has_many :users, through: :purchasings

  validates_presence_of :name, :quantity, :price
end