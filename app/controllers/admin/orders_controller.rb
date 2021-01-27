class Admin::OrdersController < ApplicationController
  def index
    @orders = OrderItem.all
  end

  def show
  end

  def destroy
    @order = OrderItem.find(params[:id])
    @order.destroy
    redirect_to admin_orders_path
  end

end
