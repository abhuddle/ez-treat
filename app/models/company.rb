class Company < ActiveRecord::Base
  has_many :towers
  belongs_to :user
end
