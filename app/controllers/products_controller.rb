class ProductsController < ApplicationController
   before_action :set_product, only: [:show]
  def index
    # mutualiser les méthodes read delete
    sql_query = "name ILIKE :query OR description ILIKE :query"
    @products = Product.all
    search_params_query_category = params.dig(:product, :query_category)
    search_params_query = params.dig(:product, :query)
    if search_params_query_category.present? && search_params_query_category[1]
      @products = @products.where(category: params.dig(:product, :query_category)[1])
      Rails.cache.fetch("first_step_search/key_#{current_user.id}", expires_in: 2.minutes) do
        @products
      end
    end
    if search_params_query.present?
      @products = @products.where(sql_query, query: "%#{params.dig(:product, :query)}%")
      Rails.cache.fetch("first_step_search/key_#{current_user.id}", expires_in: 2.minutes) do
        @products
      end
    end
    if params.dig(:product, :query_filter_brand).present?
      # first_step_search = Rails.cache.read("first_step_search/key_#{current_user.id}")
      @products_filtered = @products.where(brand: params.dig(:product, :query_filter_brand)[1])
      # Rails.cache.delete("first_step_search/key_#{current_user.id}")
    end
    if params.dig(:product, :price).present?
      @products = @products.filter_by_price(params[:product][:price])
      # Rails.cache.delete("first_step_search/key_#{current_user.id}")
    end
    if params.dig(:product, :quantity).present?
      # @products = @products.where(available_quantity: params.dig(:product, :query_filter_available_quantities)[1])
      @products = @products.filter_by_quantity(params[:product][:quantity])
      # Rails.cache.delete("first_step_search/key_#{current_user.id}")
    end
  end

  def show
    @recommanded_products = Product.where(category: @product.category).limit(4)
  end

  private

  def product_params
    params.require(:product).permit(:name, :model, :description, :equipments, :unit_price_cents, :available_quantity, :brand, :query)
  end

  def set_product
    @product = Product.find(params[:id])
    # authorize @Product
  end
end
