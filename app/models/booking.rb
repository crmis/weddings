require_relative './concerns/bookable'
class Booking < ActiveRecord::Base
  include Bookable
  has_many :additions
  has_many :extras, :through => :additions
end
