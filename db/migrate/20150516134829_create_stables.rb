class CreateStables < ActiveRecord::Migration
  def change
    create_table :stables do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end
