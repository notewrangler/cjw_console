class RemoveOldColumnsFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :package_details
  	remove_column :products, :shipping_details
  	remove_column :products, :return_policy
  end
end
