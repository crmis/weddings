# @author Stacey Rees <https://github.com/staceysmells>
class Extra < ActiveRecord::Base
	belongs_to :extracat
	belongs_to :booking

	def extra_info
		"#{name}"
	end

	has_attached_file :extraimg, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :extraimg, :content_type => /\Aimage\/.*\Z/
	validates_attachment_presence :extraimg
	validates :name, :presence => { :message => "cannot be blank ..."}
	validates :name, :length => {:in => 2..35, :message => "must be between two and thirty five characters"}

	validates :description, :presence => { :message => "cannot be blank ..."}
	validates :description, :length => {:maximum => 2000, :message => "maximum length 2000 characters"}

	validates :price, :presence => { :message => "cannot be blank ..."}
	validates :price, :numericality => {:greater_than_or_equal_to => 100, :message => "Price: cannot be less than 100"}
	validates :price, :numericality => {:less_than => 5001, :message => "Price: cannot more than 5000"}

	validates :quantity, :presence => { :message => "cannot be blank ..."}
	validates :quantity, :numericality => {:greater_than_or_equal_to => 1, :message => "Size: cannot be less than one"}
end
