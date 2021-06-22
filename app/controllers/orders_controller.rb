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


    #@sum_requests = user_orders.where(user_id: @order.user_id)
    #@recommanded_products = Product.where(category: @product.category).limit(4)

  end

  def create
    @order = Order.new(create_order_params.merge(user: current_user))
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
    @request = Order.find(params[:id])

    form_params = current_user.role == "buyer" ? update_buyer_params : update_supplier_params

    if @request.update(form_params)
      redirect_to orders_path
    else
      render :edit
    end
  end

  private

  def create_order_params
    params.require(:order).permit(:product_quantity)
  end

  def update_buyer_params
    params.require(:order).permit(:status)
  end

  def update_supplier_params
    params.require(:order).permit(:shipping_date, :delivery_date, :price_cents, :shipped_status, :delivered_status)
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
