class OrdersController < ApplicationController
  before_action :set_order, only: [ :show, :destroy]
  before_action :set_product, only: [:show, :destroy]

  def index
    @orders = current_user.orders
  end

  def create
    @order = Order.new(order_params.merge(user: current_user))
    @order.product = @product
    if @order.save!
      redirect_to orders_path
    else
      render :new
    end
  end

  def new
    @order = Order.new
  end

  def show
    @product = @order.product
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
    params.require(:order).permit(:delivery_date, :product_quantity, :shipping_date, :price_cents, :product_id)
  end

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end
