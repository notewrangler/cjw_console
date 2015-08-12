class AddListingDateToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :listing_date_time, :time
  end
end
