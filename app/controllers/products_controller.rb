class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find_by(id: params[:format])
    end
end