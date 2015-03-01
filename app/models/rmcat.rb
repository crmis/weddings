# @author Tom Cox <tom.jcox@icloud.com>
# @author Richard Mitchell <https://github.com/mr-mitch>

class Rmcat < ActiveRecord::Base

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
