class CreateRmcats < ActiveRecord::Migration
  def change
    create_table :rmcats do |t|
      t.string :rmtype

      t.timestamps null: false
    end
  end
end
