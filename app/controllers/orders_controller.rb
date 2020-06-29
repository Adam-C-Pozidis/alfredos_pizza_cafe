class OrdersController < ApplicationController

# This controller creates orders and on create method sets the cards of the
# shopping cart to the new order object so to be saved in our order history
# The before_action callback is a built in method of ruby that allows us
# to perfore actions before the call of the method.
# The authenticate_user callback needs to authenticate the user before clicking
# on order history link .

before_action :authenticate_user!, only: :index

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def create
    @order = Order.new(set_order_params)
    @order.cards = current_shopping_cart.cards
    if @order.save
      redirect_to success_path
      session[:order] = @order
    else
      redirect_to fail_path
    end
  end

  def set_order_params
    params.require(:order).permit(:first_name, :last_name, :address, :phone_number)
  end

end
