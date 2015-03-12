require_relative './concerns/viewable'
class Viewing < ActiveRecord::Base

	belongs_to :user
	belongs_to :room

	include Viewable
end
