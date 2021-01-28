class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :customer

  enum payment_method: {
    credit: 0,
    bank: 1,
  }

end
