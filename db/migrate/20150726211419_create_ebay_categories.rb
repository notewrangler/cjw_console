class CreateEbayCategories < ActiveRecord::Migration
  def change
    create_table :ebay_categories do |t|
    	t.integer :category_id
    	t.string :main_category
    	t.string :sub_category1
    	t.string :sub_category2
    	t.string :sub_category3
    	t.string :sub_category4
    	t.string :sub_category5
    	t.integer :parent_id

      t.timestamps null: false
    end
  end
end
