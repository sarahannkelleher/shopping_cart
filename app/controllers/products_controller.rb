class ProductsController < ApplicationController

    def index
      @products = Product.all
    end

    def show
      @product = Product.find(params[:id])
    end

    def destroy
      Product.destroy(params[:id])
      redirect_to action: "index"
    end

end

# redirect_to "/products"
