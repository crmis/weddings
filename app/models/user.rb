# @author Tom Cox <tom.jcox@icloud.com>
# @author Richard Mitchell <https://github.com/mr-mitch>
class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

	has_many :viewings

	  def user_info
    "#{id} #{customer_name}"
  end
end
