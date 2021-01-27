class RenameItemsIdColumnToOrderItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :order_items, :items_id, :item_id
  end
end
