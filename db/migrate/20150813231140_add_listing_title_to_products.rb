class AddListingTitleToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :listing_title, :string
  end
end
