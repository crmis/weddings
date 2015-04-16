require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
  include Bookable
  belongs_to :user
  belongs_to :room
  # has_many :extras
end
