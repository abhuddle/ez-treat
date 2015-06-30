class Tower < ActiveRecord::Base
  belongs_to :company
  has_many :samples
end
