class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy, :add_item]


  def add_item
    @cart.items << Item.find(params[:id])
     flash[:success] = "Objet ajouté"
  end

  def show
  end


  private

  def set_cart
    @cart = current_user.cart
  end

  def cart_params
    params.require(:cart).permit(:user_id)
  end


end
