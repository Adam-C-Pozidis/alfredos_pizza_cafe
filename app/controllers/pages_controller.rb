class PagesController < ApplicationController

  def home

  end
  def index
    @menu_items = MenuItem.all
    @card = current_shopping_cart.cards.new
    @shopping_cart_cards = current_shopping_cart.cards
  end

end
