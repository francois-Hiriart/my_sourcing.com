class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index_category
    sql_query = "name ILIKE :query OR description ILIKE :query"
    @products = Product.all
    if params[:products][:query_category][1]
      @products = @products.where(category: params[:products][:query_category][1])
    end
    if params[:products][:query]
      @products = @products.where(sql_query, query: "%#{params[:products][:query]}%")
    end
  end
end
