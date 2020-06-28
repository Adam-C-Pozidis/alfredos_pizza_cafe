class Order < ApplicationRecord

  # creating the order model so we will keep track of  all of our customers orders

  validates :first_name, :last_name, :address, :phone_number, presence: true

  belongs_to :user, optional: true
  has_many :cards, dependent: :destroy
  has_many :menu_items, through: :cards

  before_save :set_subtotal


  def subtotal
    cards.collect{|card| card.valid? ? card.unit_price*card.quantity : 0}.sum
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end

end
