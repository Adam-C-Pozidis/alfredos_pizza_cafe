module ApplicationHelper

  # 
  # def current_customer
  #   if session[:user_id]
  #     @customer = User.find(session[:user_id])
  #   end
  # end
  #
  # def current_shopping_cart
  #   if login?
  #     @shopping_cart = @customer.shopping_cart
  #   else
  #     if session[:shopping_cart]
  #       @shopping_cart = ShoppingCart.find(session[:shopping_cart])
  #     else
  #       @shopping_cart = ShoppingCart.create
  #       session[:shopping_cart] = @shopping_cart.id
  #     end
  #   end
  # end
  #
  # def login?
  #   !!current_customer
  # end


end
