class Company < ActiveRecord::Base
  has_many :towers
  has_many :samples
  belongs_to :user
end
