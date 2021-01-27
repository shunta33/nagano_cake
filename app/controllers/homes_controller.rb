class HomesController < ApplicationController
  def top
    @items = Item.limit(4).order(:created_at)
  end

  def about
  end
end
