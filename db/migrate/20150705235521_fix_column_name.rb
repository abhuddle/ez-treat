class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :towers, :type, :tower_type
  end
end
