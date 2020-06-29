class ShoppingCartsController < ApplicationController
# This contoller shows and creates the shopping carts

  def show
    @shopping_cart_cards = current_shopping_cart.cards
  end

  def new
  end


end
