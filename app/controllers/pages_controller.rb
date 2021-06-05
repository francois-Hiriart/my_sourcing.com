class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index_category
      sql_query = "name ILIKE :query OR description ILIKE :query"
      raise
      if params[:products][:query_category][1] == "masque"
      @masques = Masque.where(sql_query, query: "%#{params[:products][:query]}%")
      elsif params[:products][:query_category][1] == "catheter"
      @catheters = Catheter.where(sql_query, query: "%#{params[:products][:query]}%")
      elsif params[:products][:query_category][1] == "scalpel"
      @scalpels = Scalpel.where(sql_query, query: "%#{params[:products][:query]}%")
      elsif params[:products][:query_category][1] == "seringue"
      @seringues = Seringue.where(sql_query, query: "%#{params[:products][:query]}%")
      elsif params[:products][:query_category][1] == "bande"
      @bandes = Bande.where(sql_query, query: "%#{params[:products][:query]}%")
      else
      puts "nous ne disposons pas du produit que vous cherchez en stock. merci de contacter notre équipe achats via le formulaire de contact."
    end
  end

end
