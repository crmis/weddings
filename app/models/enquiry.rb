# @author Tom Cox <https://github.com/koxzi95>
class Enquiry < ActiveRecord::Base

	belongs_to :user
	validates :subject, :presence => { :message => "cannot be blank ..."}
	validates :e_description, :presence => { :message => "cannot be blank ..."}
end
