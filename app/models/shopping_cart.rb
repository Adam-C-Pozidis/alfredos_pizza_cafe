class ShoppingCart < ApplicationRecord

  # The shopping cart will belong to one user and will have many menu items through
  # cards table since it's many to many relation tables
  belongs_to :user, optional: true
  has_many :cards, dependent: :destroy
  has_many :menu_items, through: :cards

  before_save :set_subtotal


  def subtotal
    cards.collect{|card| card.valid? ? card.unit_price*card.quantity : 0}.sum
  end

  def price_in_euros
    (subtotal * 0.89).round(2)
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
