class CreateShipDetails < ActiveRecord::Migration
  def change
    create_table :ship_details do |t|
      t.integer :product_id
      t.string :handling_time
      t.string :shipping_services      
      t.string :international

      t.timestamps null: false
    end
    add_index :ship_details, :product_id
  end
end
