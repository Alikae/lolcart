class ProductController < ApplicationController
      def index
        @item = Item.all
      end

      def new
        @item = Item.new
      end

      def create
        @pitem = Item.new params[:post]
        if @item.save
          redirect_to product_path
        else
          render :action => 'new'
      end
    end

    def edit
      @item = Item.find params[:id]
    end

    def update
        @item = Item.find params[:id]
        if @item.update_attributes params[:article]
          redirect_to posts_path
        end
    def show
      @item = Item.find params[:id]
    end

    def destroy
      @item = Item.find params[:id]
      @item.destroy
      redirect_to articles_path
    end
    end

end
