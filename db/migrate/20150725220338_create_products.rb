class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.date :purchase_date
      t.string :purchase_source
      t.decimal :purchase_price, precision: 5, scale: 2
      t.string :type

      t.timestamps null: false
    end
  end
end
