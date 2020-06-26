class ShoppingCartsController < ApplicationController

  def show
    @shopping_cart_cards = current_shopping_cart.cards
  end

  def new
  end


end
