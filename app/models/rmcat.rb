# @author Tom Cox <https://github.com/koxzi95>
# @author Richard Mitchell <https://github.com/mr-mitch>
class Rmcat < ActiveRecord::Base

	has_many :rooms
	def rmcat_info
		"#{rmtype}"
	end

	def rmtype=(s)
		super s.titleize
	end

	validates :rmtype, :presence => { :message => "cannot be blank."}

	# before I am destroyed, check if rmcat is deletable
	before_destroy :rmcat_deletable?

	private
	def rmcat_deletable?
		# the rmcat is deletable if it has no rooms assigned to it
		self.rooms.empty?
	end
end
