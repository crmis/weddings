# @author Richard Mitchell
# @author Stacey Rees
class Extracat < ActiveRecord::Base
  has_many :extras#
  def extracat_info
    "#{id} #{extratype}"
  end

  def extratype=(s)
    super s.titleize
  end

  # before I am destroyed, check if rmcat is deletable
  before_destroy :extracat_deletable?

  private
  def extracat_deletable?
    # the rmcat is deletable if it has no rooms assigned to it
    self.rooms.empty?
  end
end
