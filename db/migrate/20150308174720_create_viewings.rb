class CreateViewings < ActiveRecord::Migration
  def change
    create_table :viewings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :length
      t.belongs_to :room, index: true
    end
    add_foreign_key :viewings, :rooms
  end
end
