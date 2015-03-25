# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\enquiries\edit.html.erb_spec.rb
RSpec.describe "enquiries/edit", type: :view do
	before(:each) do
		@enquiry = assign(:enquiry, Enquiry.create!(
			:subject => "MyString",
			:e_description => "MyText"
		))
	end

	it "renders the edit enquiry form" do
		render

		assert_select "form[action=?][method=?]", enquiry_path(@enquiry), "post" do

			assert_select "input#enquiry_subject[name=?]", "enquiry[subject]"

			assert_select "textarea#enquiry_e_description[name=?]", "enquiry[e_description]"
		end
	end
end
