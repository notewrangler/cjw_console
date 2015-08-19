class CreateReturnPolicies < ActiveRecord::Migration
  def change
    create_table :return_policies do |t|
      t.integer :product_id
      t.string :accepted_or_not
      t.string :contact_time_limit
      t.string :refund_type
      t.string :shipping
      t.hstore :details

      t.timestamps null: false
    end
    add_index :return_policies, :product_id
  end
end
