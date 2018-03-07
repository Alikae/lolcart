class OrdersController < ApplicationController
  def index
  end

  def create
    @order = Order.create(user_id: current_user.id)
    @order.items = current_user.cart.items
    current_user.cart.items.destroy
  end
end
