class Purchasing < ApplicationRecord
  belongs_to :user
  belongs_to :items

  validates_presence_of :num_of_items, :total_price
end