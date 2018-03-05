class ProductController < ApplicationController
      def index
        @product = Product.all
      end

      def new
        @post = Post.new
      end

      def create
        @product = Product.new params[:post]
        if @product.save
          redirect_to product_path
        else
          render :action => 'new'
      end
    end

    def edit
      @product = Product.find params[:id]
    end

    def update
        @article = Article.find params[:id]
        if @article.update_attributes params[:article]
          redirect_to posts_path
        end
    def show
      @article = Article.find params[:id]
    end

    def destroy
      @article = Article.find params[:id]
      @article.destroy
      redirect_to articles_path
    end
    end

end
