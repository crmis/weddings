# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\rmcats\edit.html.erb_spec.rb
RSpec.describe "rmcats/edit", type: :view do
	before(:each) do
		@rmcat = assign(:rmcat, Rmcat.create!(
			:rmtype => "MyString",
		))
	end
	it "renders the edit rmcat form" do
		render
		assert_select "form[action=?][method=?]", rmcat_path(@rmcat), "post" do
			assert_select "input#rmcat_rmtype[name=?]", "rmcat[rmtype]"
		end
	end
end
