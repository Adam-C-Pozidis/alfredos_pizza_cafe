class Card < ApplicationRecord

  # creating associations  with the shopping cart and menu_item
  # because its a many to many relation tables
  belongs_to :menu_item
  belongs_to :shopping_cart
end
