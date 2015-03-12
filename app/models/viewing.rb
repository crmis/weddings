# @author Tom Cox <https://github.com/koxzi95>
# @author Richard Mitchell <https://github.com/mr-mitch>
require_relative './concerns/viewable'
class Viewing < ActiveRecord::Base

	belongs_to :user
	belongs_to :room

	include Viewable
end
