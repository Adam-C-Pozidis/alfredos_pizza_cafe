class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  before_action :current_shopping_cart

  def current_shopping_cart
    if login?
      @shopping_cart = @customer.shopping_cart
    else
      if session[:shopping_cart]
        @shopping_cart = ShoppingCart.find(session[:shopping_cart])
      else
        @shopping_cart = ShoppingCart.create
        session[:shopping_cart] = @shopping_cart.id
      end
    end
  end

end
