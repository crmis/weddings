require_relative './concerns/viewable'
class Viewing < ActiveRecord::Base
	include Viewable
end
