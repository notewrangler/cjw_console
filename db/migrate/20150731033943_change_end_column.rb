class ChangeEndColumn < ActiveRecord::Migration
  def change
  	remove_column :ebay_categories, :end_column
  	add_column :ebay_categories, :end_category, :boolean
  end
end
