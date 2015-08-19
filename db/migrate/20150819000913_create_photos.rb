class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :product_id
      t.string :name
      t.string :image
      t.boolean :main

      t.timestamps null: false
    end
  end
end
