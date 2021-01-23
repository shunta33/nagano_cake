class AddColumnOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipping_name_2, :string
    add_column :orders, :shipping_postal_code_2, :string
    add_column :orders, :shipping_address_2, :string
    add_column :orders, :shipping_name_1, :string
    add_column :orders, :shipping_postal_code_1, :string
    add_column :orders, :shipping_address_1, :string
    add_column :orders, :order_select, :integer
  end
end
