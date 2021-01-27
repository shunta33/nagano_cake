class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @items = OrderItem.all
    p @items
  end

  def show
  end

  def new
    @order = Order.new
    @customer = current_customer
  end

  def create
    @order = Order.new(order_params)
    @order_items = current_customer.cart_items
    p @order
    @order.save
    @order_items.each do |order_item|
      @order_item = OrderItem.new
      @order_item.quantity = order_item.amount
      p order_item.item_id
      @order_item.item_id = order_item.item_id
      @order_item.purchase_price = order_item.item.price
      @order_item.order_id = @order.id
      @order_item.save
    end
    redirect_to orders_complete_path
  end

  def complete
    @order = Order.all
    p @order
    @order_item = OrderItem.all
    p @order_item
  end

  def confirm
    @customer = current_customer
    @cart_items = current_customer.cart_items.all
    @order = Order.new(order_params)

    if @order.order_select == 0
      @order.shipping_postal_code = current_customer.postal_code
      @order.shipping_address = current_customer.address
      @order.shipping_name = current_customer.first_name+current_customer.last_name

    elsif  @order.order_select == 2
      @order.shipping_postal_code = @order.shipping_postal_code_2
      @order.shipping_address = @order.shipping_address_2
      @order.shipping_name = @order.shipping_name_2
    end
    p @order
  end

  private

  def order_params
    params.require(:order).permit(:payment_method, :order_select, :shipping_postal_code_2, :shipping_address_2,
    :shipping_name_2, :shipping_address, :shipping_name, :shipping_postal_code, :customer_id, :billing_amount, :shipping_fee)
  end

end