# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\extracats\edit.html.erb_spec.rb
RSpec.describe "extracats/edit", type: :view do
	before(:each) do
		@extracat = assign(:extracat, Extracat.create!(
			:extratype => "MyString",
		))
	end
	it "renders the edit extracat form" do
		render
		assert_select "form[action=?][method=?]", extracat_path(@extracat), "post" do
			assert_select "input#extracat_extratype[name=?]", "extracat[extratype]"
		end
	end
end
