# @author Tom Cox <tom.jcox@icloud.com>
# @author Richard Mitchell <https://github.com/mr-mitch>
require_relative './concerns/viewable'
class Viewing < ActiveRecord::Base

	belongs_to :user
	belongs_to :room

	include Viewable
end
