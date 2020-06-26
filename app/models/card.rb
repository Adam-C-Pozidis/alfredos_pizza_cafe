class Card < ApplicationRecord

  # creating associations  with the shopping cart and menu_item
  # because its a many to many relation tables
  belongs_to :menu_item
  belongs_to :shopping_cart

  before_save :set_unit_price, :set_total

  def unit_price
    if persisted?
      self[:unit_price]
    else
      menu_item.price
    end
  end

  def total
    unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end

end
