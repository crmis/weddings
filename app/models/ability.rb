class Ability
  # @!attribute name
  #   @return [String] The name of the task.

  # @!attribute description
  #   @return [String] The description of the task.

  # @!attribute active
  #   @return [Boolean] Marks whether the task is active or not.
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can [:manage], [Room, Rmcat]
    else
      can [:read], [Room, Rmcat]
    end
    if user.customer?
      can [:read], [Room]
      # Yes is really is cannot
      cannot [:read], [Rmcat]
    end
  end
end
