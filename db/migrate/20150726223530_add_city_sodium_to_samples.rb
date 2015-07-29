class AddCitySodiumToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :city_sodium, :integer
  end
end
