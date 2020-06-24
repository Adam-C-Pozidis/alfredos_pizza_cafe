class ShoppingCart < ApplicationRecord

  # The shopping cart will belong to one user and will have many menu items through
  # cards table since it's many to many relation tables
  belongs_to :user
  has_many :cards
  has_many :menu_items, through: :cards
end
