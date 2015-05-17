class AddStableToPony < ActiveRecord::Migration
  def change
  	add_column :ponies, :stable_id, :integer

  end
end
