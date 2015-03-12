class RemoveResources < ActiveRecord::Migration
  def change
   remove_column :resources, :name
  end
end
