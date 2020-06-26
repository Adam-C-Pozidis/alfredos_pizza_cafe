class PagesController < ApplicationController

  def index
    @menu_items = MenuItem.all
    @card = current_shopping_cart.cards.new
  end

end
