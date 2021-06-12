class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy, :edit, :update]


  def index
    if current_user.role == "buyer"
      user_orders = current_user.orders
    else
      user_orders = Order.joins(:product).where(products: {user_id: current_user.id})
    end

    @requests = user_orders.where(status: false)
    @orders = user_orders.where(status: true)
  end

  def create
    @order = Order.new(order_params.merge(user: current_user))
    @order.product = Product.find(params[:product_id])
    if @order.save
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

  def edit
  end

  def update
    if current_user.role == "buyer"
      @order.status = true
    else
      @order.price_cents = params[:price_cents]
      @order.shipping_date = params[:shipping_date]
      @order.delivery_date = params[:delivery_date]
    end
    if @order.save
      redirect_to orders_path
    else
      render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:delivery_date, :product_quantity, :shipping_date, :price_cents, :status)
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
