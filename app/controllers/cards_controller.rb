class CardsController < ApplicationController

# This controller  creates, updates and destroys the cards inside our shopping
# carts and orders.
  def create
    @shopping_cart = current_shopping_cart
    @card = @shopping_cart.cards.new(card_params)
    @card.save
    session[:shopping_cart_id] = @shopping_cart.id
  end


  def update
    @shopping_cart = current_shopping_cart
    @card = @shopping_cart.cards.find(params[:id])
    @card.update_attributes(card_params)
    @card.destroy if @card.quantity == 0
    @shopping_cart_cards = current_shopping_cart.cards


  end

  def destroy
    @shopping_cart = current_shopping_cart
    @card = @shopping_cart.cards.find(params[:id])
    @card.destroy
    @shopping_cart_cards = current_shopping_cart.cards

  end

  private

  def card_params
    params.require(:card).permit(:menu_item_id, :quantity)

  end
end
