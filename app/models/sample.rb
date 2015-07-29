class Sample < ActiveRecord::Base
  belongs_to :tower
  belongs_to :company

  def cycles_of_concentration
    sodium % city_sodium
  end
end
