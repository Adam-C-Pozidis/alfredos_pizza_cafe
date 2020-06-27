class PagesController < ApplicationController
  before_action :authenticate_user!, only: :confirmation

  def index
    @menu_items = MenuItem.all
    @card = current_shopping_cart.cards.new
    @shopping_cart_cards = current_shopping_cart.cards
  end

  def confirmation
  end

  def success
    if params[:fname] == "" || params[:lname] == "" || params[:address] == ""
    else
      @shopping_cart.destroy
    end
  end

  private

  def set_shopping_cart
    @shopping_cart = current_shopping_cart
  end

end
