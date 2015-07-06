class AddTypeToTower < ActiveRecord::Migration
  def change
    add_column :towers, :type, :string
  end
end
