class Rmcat < ActiveRecord::Base
    # @!attribute name
    #   @return [String] The name of the task.

    # @!attribute description
    #   @return [String] The description of the task.

    # @!attribute active
    #   @return [Boolean] Marks whether the task is active or not.
  has_many :rooms

  def rmcat_info
    "#{id} #{rmtype}"
  end

  def rmtype=(s)
    super s.titleize
  end

  # before I am destroyed, check if rmcat is deletable
  before_destroy :rmcat_deletable?

  private
  def rmcat_deletable?
    # the rmcat is deletable if it has no rooms assigned to it
    self.rooms.empty?
  end
end
