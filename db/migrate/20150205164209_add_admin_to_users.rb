class AddAdminToUsers < ActiveRecord::Migration
  def up
    add_column :users, :admin, :boolean, null: false, default: false
  end

  def down
    remove_column :users, :admin
  end
end
