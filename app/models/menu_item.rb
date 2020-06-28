class MenuItem < ApplicationRecord

  # Creating associations with the shopping cart through cards table
  # because it's a many to many relation tables
  has_many :cards
  has_many :shopping_carts, through: :cards


  def price_in_euros
    (self.price * 0.89).round(2)
  end
end
