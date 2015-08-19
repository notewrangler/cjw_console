class AddIndexesToProducts < ActiveRecord::Migration
  def change
  	execute "CREATE INDEX products_item_specifics ON products USING GIN(item_specifics)"
  end
end
