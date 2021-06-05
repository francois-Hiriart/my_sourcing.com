class ProductsController < ApplicationController

  def index
    # if params[:search].present?
    #   @products = Product.global_search("#{params[:search]}")

    # else @products = Product.all
    @products = Product.all
    # end
  end

  def show
    @product = Product.find(params[:id])
  end

private

 def product_params

  end

  def set_product

  end

end
