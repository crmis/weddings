require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
  has_many :additions
  has_many :extras, :through => :additions
  include Bookable
end
