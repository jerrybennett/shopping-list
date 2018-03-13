class ItemList < ApplicationRecord
  has_many :lists
  has_many :items
end
