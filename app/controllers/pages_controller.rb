class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index_category
      sql_query = "name ILIKE :query OR description ILIKE :query"
    if params[:query].present?
      @masques = Masque.where(sql_query, query: "%#{params[:query]}%")
    elsif
      @catheters = Catheter.where(sql_query, query: "%#{params[:query]}%")
    elsif
      @scalpels = Scalpel.where(sql_query, query: "%#{params[:query]}%")
    elsif
      @seringues = Seringue.where(sql_query, query: "%#{params[:query]}%")
    elsif
      @bandes = Bande.where(sql_query, query: "%#{params[:query]}%")
    else
      puts "nous ne disposons pas du produit que vous cherchez en stock. merci de contacter notre équipe achats via le formulaire de contact."
    end
  end

end
