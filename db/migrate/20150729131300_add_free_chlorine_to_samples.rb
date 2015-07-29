class AddFreeChlorineToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :free_chlorine, :integer
  end
end
