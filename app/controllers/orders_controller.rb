class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    #authorize @order
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def new
    @order = Order.new
  end

  def show
    # @order = Order.find(params[:id])
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  def validate
    @order = Order.find(params[:id])
    @order.validate
    redirect_to order_path(@order)
  end

  def propose_price
    @order.propose_price(order_params)
    redirect_to order_path(@order)
  end

  private

  def order_params
    params.require(:order).permit(:delivery_date, :product_quantity, :shipping_date, :price_cents, :created_at, :updated_at, :user_id, :product_id)
  end

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end
end
