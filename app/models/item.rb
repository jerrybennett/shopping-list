class Item < ApplicationRecord
  belongs_to :user
  has_many :item_lists
  has_many :lists, through: :item_lists
end
