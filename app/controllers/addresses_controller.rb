class AddressesController < ApplicationController
  def index
    @address = Address.new
  end

  def edit
  end

  def create
    @address = Address.new(address_params)
    @address.save
    redirect_to customers_my_page_path
  end

  def update
  end

  def destroy
  end
end
