class ApplicationController < ActionController::Base
# This controller is the super controller of all others and is setting the
# current shoppign cart on every action.
# The include aplicationHelper is doing the same but we need it for the app
# to run properly

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
