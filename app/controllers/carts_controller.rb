class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.create(cart_params)
  end

  def add_item(item_id)
    @cart = current_user.cart
    @cart << Item.find(item_id)
  end

  def show
  end

  def edit
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:user_id)
  end


end
