class AddSampleDateToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :sample_date, :datetime
  end
end
