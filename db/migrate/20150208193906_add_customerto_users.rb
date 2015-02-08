class AddCustomertoUsers < ActiveRecord::Migration
  def up
    add_column :users, :customer, :boolean, null: false, default: true
  end

  def down
    remove_column :users, :customer
  end
end
