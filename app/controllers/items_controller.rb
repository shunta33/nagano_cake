class ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).per(8)
    @items_count = Item.count
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @customer = current_customer
  end

end
