class PagesController < ApplicationController

  def index
    @menu_items = MenuItem.all
    @card = current_shopping_cart.cards.new
    @shopping_cart_cards = current_shopping_cart.cards
  end

  def confirmation
    @order= Order.new
  end

  def success
    @order = Order.find(session[:order]["id"])
    if user_signed_in?
      @order.user = current_user
      @order.save
    end
    session[:shopping_cart] = ShoppingCart.create
  end

  def fail
  end

  def currency_dollars
    session[:currency] = "dollars"
    redirect_to root_path
  end

  def currency_euros
    session[:currency] = "euros"
    redirect_to root_path
  end

  private

  def set_shopping_cart
    @shopping_cart = current_shopping_cart
  end


end
