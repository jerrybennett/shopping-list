class User < ApplicationRecord
  has_many :items
  has_many :lists, through: :user_lists
end
