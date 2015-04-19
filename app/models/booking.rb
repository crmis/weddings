require_relative './concerns/bookable'
class Booking < ActiveRecord::Base
  include Bookable
  belongs_to :room
  belongs_to :user
  has_many :additions
  has_many :extras, :through => :additions
end
