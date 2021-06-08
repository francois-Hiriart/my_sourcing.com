class ProductsController < ApplicationController

  def index
    sql_query = "name ILIKE :query OR description ILIKE :query"
    @products = Product.all
    if params[:products][:query_category][1]
      @products = @products.where(category: params[:products][:query_category][1])
    end
    if params[:products][:query]
      @products = @products.where(sql_query, query: "%#{params[:products][:query]}%")
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
