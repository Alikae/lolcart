class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy, :add_item, :remove_item]


  def add_item
    @item = Item.find(params[:id])
    if @cart.items.include?(@item)
      redirect_to items_path(@item), :flash => { :alert => "ˁ˚ᴥ˚ˀ wtf, ton chaton est déjà dans le panier ! ˁ˚ᴥ˚ˀ" }
    else
      @cart.items << @item
      redirect_to items_path(@item), :flash => { :success => "ˁ˚ᴥ˚ˀ lol, ton chaton est ajouté ! ˁ˚ᴥ˚ˀ" }
    end
  end

  def remove_item
    @item = Item.find(params[:id])
    @cart.items.delete(@item)
    redirect_to cart_path, :flash => { :danger => "ˁ˚ᴥ˚ˀ , omg, ton chaton est supprimé ! ˁ˚ᴥ˚ˀ" }
  end

  def show
    @total=0
    current_user.cart.items.each do |item|
      @total+=item.price
    end
  end


  private

  def set_cart
    @cart = current_user.cart
  end

  def cart_params
    params.require(:cart).permit(:user_id)
  end


end
