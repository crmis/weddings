# @author Tom Cox <https://github.com/koxzi95>
class Enquiry < ActiveRecord::Base

  belongs_to :user
  validates :subject, :presence => {:message => "cannot be blank ..."}
  validates :e_description, :presence => {:message => "cannot be blank ..."}

  def user_info
    "#{id} #{customer_name}"
  end

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  # def headers
  # 	{
  # 		:subject => "mvweddings - enquiry",
  # 		:to => "tomcox.media@gmail.com",
  # 		:from => "#{customer_name} <#{email}>"
  # 	}
  # end
end
