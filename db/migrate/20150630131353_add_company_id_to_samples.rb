class AddCompanyIdToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :company_id, :string
  end
end
