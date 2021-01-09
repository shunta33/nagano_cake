class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.timestamps
      t.integer :customer_id,      null: false
      t.string :name,             null: false
      t.string :postal_code,      null: false
      t.string :address,          null: false
    end
  end
end
