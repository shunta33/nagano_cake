class CartItem < ApplicationRecord

  belongs_to :customer
  belongs_to :item

  def add_again_amount(add_amount)
    self.amount += add_amount.to_i
    self.update(amount: self.amount)
  end

end
