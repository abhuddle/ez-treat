class AddSampleDateToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :sample_date, :string
  end
end
