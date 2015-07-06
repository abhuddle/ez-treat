class Tower < ActiveRecord::Base
  belongs_to :company
  has_many :samples

  def self.by_company(user)
    where('company_id =  ?', user.company_id)
  end
end
