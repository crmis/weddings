class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :extraimg
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.integer :extracat_id

      t.timestamps null: false
    end
  end
end
