class RenameAddressColumnToAddresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :addresses, :address, :shipping_address
  end
end
