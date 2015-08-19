class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :product_id
      t.string :package_type
      t.string :length
      t.string :width
      t.string :height
      t.string :weight

      t.timestamps null: false
    end
    add_index :packages, :product_id
  end
end
