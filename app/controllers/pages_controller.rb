class PagesController < ApplicationController
  before_action :set_shopping_cart, except: :home
  def home
  end

  def index
    @menu_items = MenuItem.all
    @card = current_shopping_cart.cards.new
    @shopping_cart_cards = current_shopping_cart.cards
  end

  def confirmation
  end

  def success
  end

  private

  def set_shopping_cart
    @shopping_cart = current_shopping_cart
  end

end
