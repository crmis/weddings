class AddRmcatIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :rmcat_id, :integer
  end
end
