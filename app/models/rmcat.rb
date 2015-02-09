class Rmcat < ActiveRecord::Base

  has_many :rooms

  def rmcat_info
    "#{id} #{rmtype}"
  end
  
end
