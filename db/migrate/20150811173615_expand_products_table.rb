class ExpandProductsTable < ActiveRecord::Migration
  def change
  	add_column :products, :ebay_category, :string
  	add_column :products, :upc, :string
  	add_column :products, :condition, :string
  	add_column :products, :quantity, :integer
  	add_column :products, :item_specifics, :hstore
  	add_column :products, :listing_format, :string
  	add_column :products, :listing_price, :decimal, precision: 6, scale: 2
  	add_column :products, :listing_duration, :string
  	add_column :products, :item_location, :string
  	add_column :products, :payment_policy, :string
  	add_column :products, :package_details, :hstore
  	add_column :products, :shipping_details, :hstore
  	add_column :products, :return_policy, :hstore

  end
end
