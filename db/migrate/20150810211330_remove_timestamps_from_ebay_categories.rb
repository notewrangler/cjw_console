class RemoveTimestampsFromEbayCategories < ActiveRecord::Migration
  def change
  	remove_column :ebay_categories, :created_at
  	remove_column :ebay_categories, :updated_at
  end
end
