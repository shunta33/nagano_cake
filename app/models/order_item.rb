class OrderItem < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  belongs_to :order
  belongs_to :item
end
