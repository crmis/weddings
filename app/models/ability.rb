# @author Tom Cox <tom.jcox@icloud.com>
class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can [:manage], [Room, Rmcat, Extra, Extracat]
    else
      can [:read], [Room, Rmcat, Extra, Extracat]
    end
    if user.customer?
      can [:read], [Room, Extra]
      # Yes is really is cannot
      cannot [:read], [Rmcat, Extracat]
    end
  end
end
