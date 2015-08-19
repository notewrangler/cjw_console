class AddCountryOfManufactureToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :country_region_of_manufacture, :string
  end
end
