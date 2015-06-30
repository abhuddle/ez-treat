class CreateTower < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.string :company_id
    end
  end
end
