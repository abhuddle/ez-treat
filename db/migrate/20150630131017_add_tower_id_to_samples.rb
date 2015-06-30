class AddTowerIdToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :tower_id, :string
  end
end
