class AddEndColumnToEbayCategories < ActiveRecord::Migration
  def change
  	add_column :ebay_categories, :end_column, :integer
  end
end
