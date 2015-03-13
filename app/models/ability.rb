# @author Tom Cox <https://github.com/koxzi95>
class Ability
	include CanCan::Ability
	def initialize(user)
		user ||= User.new # guest user (not logged in)

		# if administrator
		if user.admin?
			can [:manage], [Room, Rmcat, Extra, Extracat, Viewing]
			# if user, or not logged in
		else
			can [:read], [Room, Extra]
			cannot [:read], [Rmcat, Extracat, Viewing]
			cannot [:create], [Viewing]
		end

		# if customer
		if user.customer
			can [:create], [Viewing]
			# Yes is really is cannot
			cannot [:read], [Rmcat, Extracat]
		end
	end
end
