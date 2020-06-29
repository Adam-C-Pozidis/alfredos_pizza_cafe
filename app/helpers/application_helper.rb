module ApplicationHelper
# This modules sets our shopping cart and current user for every action we take

  def current_customer
    if session[:user_id]
      @customer = User.find(session[:user_id])
    end
  end

  def current_shopping_cart

    if session[:shopping_cart] && !ShoppingCart.find_by_id(session[:shopping_cart]).nil?
      @shopping_cart = ShoppingCart.find(session[:shopping_cart])
    else
      @shopping_cart = ShoppingCart.create
      session[:shopping_cart] = @shopping_cart.id

    end
  end

end
