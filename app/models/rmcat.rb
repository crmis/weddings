class Rmcat < ActiveRecord::Base

  has_many :rooms

  def rmcat_info
    "#{id} #{rmtype}"
  end

  before_destroy :rmcat_with_room?

  private

  def rmcat_with_room?
    # Error message plz
    self.rooms.empty?
  end
end
