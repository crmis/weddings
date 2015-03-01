# @author Tom Cox <tom.jcox@icloud.com>
class Ability
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
