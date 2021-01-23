class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.new
    @customer = current_customer
    p @order
  end

  def create
  end

  def complete
  end

  def comfirm
  end

end