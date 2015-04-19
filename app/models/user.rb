# @author Tom Cox <https://github.com/koxzi95>
# @author Richard Mitchell <https://github.com/mr-mitch>
class User < ActiveRecord::Base
	# include MailForm::Delivery
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	has_many :viewings
	has_many :bookings
	has_many :enquiries

	def user_info
		"#{customer_name}"
	end

	# attributes :customer_name, :email
	#
	# def headers
	# 	{
	# 		:to => "your.email@your.domain.com",
	# 		:subject => "User created an account"
	# 	}
	# end
end
