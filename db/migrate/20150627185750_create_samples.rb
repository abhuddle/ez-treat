class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :user
      t.string :date
      t.integer :conductivity
      t.integer :ph
      t.integer :magnesium
      t.integer :calcium
      t.integer :ca_mg_ratio
      t.integer :iron
      t.integer :copper
      t.integer :phosphorus
      t.integer :zinc
      t.integer :sodium
      t.integer :molybdate
      t.integer :silicate
      t.integer :boron
      t.integer :aluminum
      t.integer :sulfer
      t.integer :manganese
      t.integer :total_hardness
      t.integer :ortho_po4
      t.integer :azole
      t.integer :polymer

      t.timestamps
    end
  end
end
