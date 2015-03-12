class RemoveResourcesTable < ActiveRecord::Migration
  def change
   drop_table :resources
  end
end
