class AddForeignKeyToPonies < ActiveRecord::Migration
  def change
  	add_foreign_key :ponies, :stable_id
  end
end
