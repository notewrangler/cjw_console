class AddWorkflowState < ActiveRecord::Migration
  def change
  	rename_column :products, :state, :workflow_state
  end
end
