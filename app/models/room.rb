class Room < ActiveRecord::Base
	# @author Richard Mitchell <https://github.com/mr-mitch>
	belongs_to :rmcat

	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
	validates_attachment_presence :picture

	validates :name, :presence => { :message => "cannot be blank ..."}
	validates :name, :length => {:in => 2..35, :message => "must be between two and thirty five characters"}

	validates :description, :presence => { :message => "cannot be blank ..."}
	validates :description, :length => {:maximum => 2000, :message => "maximum length 2000 characters"}

	validates :size, :presence => { :message => "cannot be blank ..."}
	validates :size, :numericality => {:greater_than_or_equal_to => 10, :message => "Size: cannot be less than ten"}
	validates :size, :numericality => {:less_than => 2001, :message => "Price: cannot more than 2000"}

	validates :capacity, :presence => { :message => "cannot be blank ..."}
	validates :capacity, :numericality => {:greater_than_or_equal_to => 10, :message => "Size: cannot be less than ten"}
	validates :capacity, :numericality => {:less_than => 1001, :message => "Price: cannot more than 1000"}

	validates :price, :presence => { :message => "cannot be blank ..."}
	validates :price, :numericality => {:greater_than_or_equal_to => 100, :message => "Price: cannot be less than 100"}
	validates :price, :numericality => {:less_than => 5001, :message => "Price: cannot more than 5000"}
end
