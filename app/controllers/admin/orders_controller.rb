class Admin::OrdersController < ApplicationController

  before_action :authenticate_admin!

  def index
    if params[:customer_id]
      @customer = Customer.find(params[:customer_id])
      @orders = @customer.orders
    else
      @orders = Order.all
    end

  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = OrderItem.find(params[:id])
    @order.destroy
    redirect_to admin_orders_path
  end

end
