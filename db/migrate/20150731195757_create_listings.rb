class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :product_id
      t.string :ebay_category
      t.string :upc
      t.string :condition
      t.hstore :item_specifics
      t.string :listing_format
      t.decimal :asking_price, precision: 6, scale: 2
      t.string :listing_duration
      t.string :string
      t.string :item_location
      t.string :payment_policy
      t.hstore :shipping_details
      t.hstore :package_details
      t.hstore :return_policy

      t.timestamps null: false
    end
  end
end
