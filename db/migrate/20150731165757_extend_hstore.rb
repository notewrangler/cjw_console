class ExtendHstore < ActiveRecord::Migration
  def change
  	execute "CREATE EXTENSION hstore"
  end
end
