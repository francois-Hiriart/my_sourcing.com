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
    @order = Order.new
    @orders = @product.orders
  end

  private

  def product_params
    params.require(:product).permit(:name, :model, :description, :equipments, :unit_price_cents, :available_quantity, :brand)
  end

  def set_product
    @product = Prodcut.find(params[:id])
    authorize @Product
  end
end
