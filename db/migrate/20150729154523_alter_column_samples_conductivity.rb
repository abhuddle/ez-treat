class AlterColumnSamplesConductivity < ActiveRecord::Migration
  def change
    change_table :samples do |t|
      t.change :conductivity,:decimal, :precision => 10, :scale => 2
      t.change :ph,:decimal, :precision => 10, :scale => 2
      t.change :magnesium,:decimal, :precision => 10, :scale => 2
      t.change :calcium,:decimal, :precision => 10, :scale => 2
      t.change :ca_mg_ratio,:decimal, :precision => 10, :scale => 2
      t.change :iron,:decimal, :precision => 10, :scale => 2
      t.change :copper,:decimal, :precision => 10, :scale => 2
      t.change :phosphorus,:decimal, :precision => 10, :scale => 2
      t.change :zinc,:decimal, :precision => 10, :scale => 2
      t.change :sodium,:decimal, :precision => 10, :scale => 2
      t.change :molybdate,:decimal, :precision => 10, :scale => 2
      t.change :silicate,:decimal, :precision => 10, :scale => 2
      t.change :boron,:decimal, :precision => 10, :scale => 2
      t.change :aluminum,:decimal, :precision => 10, :scale => 2
      t.change :sulfer,:decimal, :precision => 10, :scale => 2
      t.change :manganese,:decimal, :precision => 10, :scale => 2
      t.change :total_hardness,:decimal, :precision => 10, :scale => 2
      t.change :ortho_po4,:decimal, :precision => 10, :scale => 2
      t.change :azole,:decimal, :precision => 10, :scale => 2
      t.change :polymer,:decimal, :precision => 10, :scale => 2
      t.change :city_sodium,:decimal, :precision => 10, :scale => 2
      t.change :free_chlorine,:decimal, :precision => 10, :scale => 2
    end
  end
end
