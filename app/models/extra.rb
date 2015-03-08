class Extra < ActiveRecord::Base
  has_attached_file :extraimg, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :extraimg, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :extraimg
end
