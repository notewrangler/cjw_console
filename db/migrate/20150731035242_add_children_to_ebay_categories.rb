class AddChildrenToEbayCategories < ActiveRecord::Migration
  def change
  	remove_column :ebay_categories, :end_category, :boolean
  	add_column :ebay_categories, :children, :integer
  end
end
