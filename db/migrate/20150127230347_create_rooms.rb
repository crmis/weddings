class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.string :size
      t.integer :capacity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
