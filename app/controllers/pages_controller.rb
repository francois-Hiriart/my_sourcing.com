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

    #   @masques = Masque.where(sql_query, query: "%#{params[:products][:query]}%")
    # elsif params[:products][:query_category][1] == "catheter"
    #   @catheters = Catheter.where(sql_query, query: "%#{params[:products][:query]}%")
    # elsif params[:products][:query_category][1] == "scalpel"
    #   @scalpels = Scalpel.where(sql_query, query: "%#{params[:products][:query]}%")
    # elsif params[:products][:query_category][1] == "seringue"
    #   @seringues = Seringue.where(sql_query, query: "%#{params[:products][:query]}%")
    # elsif params[:products][:query_category][1] == "bande"
    #   @bandes = Bande.where(sql_query, query: "%#{params[:products][:query]}%")
    end
  end
end
