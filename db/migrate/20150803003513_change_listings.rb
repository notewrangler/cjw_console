class ChangeListings < ActiveRecord::Migration
  def change
  	remove_column :listings, :string, :string
  	add_column :listings, :quantity, :integer
  end
end
