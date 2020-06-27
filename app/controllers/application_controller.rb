class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :current_shopping_cart

  def current_shopping_cart
    if session[:shopping_cart] && !ShoppingCart.find_by_id(session[:shopping_cart]).nil?
      @shopping_cart = ShoppingCart.find(session[:shopping_cart])
    else
      @shopping_cart = ShoppingCart.create
      session[:shopping_cart] = @shopping_cart.id
    end
  end

end
