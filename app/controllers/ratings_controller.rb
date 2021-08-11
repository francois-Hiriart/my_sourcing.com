class RatingsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
    @ratings = @order.rating
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.order = Order.find(params[:order_id])
    authorize @rating
    if @rating.save
      redirect_to orders_path(tab: "commandes")
    else
      render :new
    end
  end

  def new
   @rating = Rating.new
  end

private

  def rating_params
    params.require(:rating).permit(:grade)
  end
end
