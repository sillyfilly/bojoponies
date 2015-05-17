class CreatePonies < ActiveRecord::Migration
  def change
    create_table :ponies do |t|
      t.string :name
      t.integer :age
      t.decimal :height
      t.string :colour
      t.decimal :rate
      t.string :picture

      t.timestamps null: false
    end
  end
end
