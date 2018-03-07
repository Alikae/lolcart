class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy, :add_item, :remove_item]


  def add_item
    @cart.items << Item.find(params[:id])
    redirect_to cart_path, :flash => { :success => "ˁ˚ᴥ˚ˀ lol, ton chaton est ajouté ! ˁ˚ᴥ˚ˀ" }
  end

  def remove_item
    @item = Item.find(params[:id])
    @cart.items.delete(@item)
    redirect_to cart_path, :flash => { :danger => "ˁ˚ᴥ˚ˀ , omg, ton chaton est supprimé ! ˁ˚ᴥ˚ˀ" }
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
