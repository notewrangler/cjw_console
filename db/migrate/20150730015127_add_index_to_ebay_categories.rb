class AddIndexToEbayCategories < ActiveRecord::Migration
  def change
  	add_index :ebay_categories, :category_id
  end
end
