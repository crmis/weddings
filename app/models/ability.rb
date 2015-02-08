class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can [:manage], [Room, Rmcat]
    else
      can [:read], [Room, Rmcat]
    end
    # if user.customer?
    #
    # end
  end
end
