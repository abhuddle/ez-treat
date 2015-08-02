class Sample < ActiveRecord::Base
  belongs_to :tower
  belongs_to :company

  def as_json(options={})
    options[:methods] = [:cycles_of_concentration,:formatted_sample_date]
    super
  end

  def cycles_of_concentration
    sodium % city_sodium
  end

  def formatted_sample_date
    sample_date.strftime('%Y-%m-%d')
  end


end
