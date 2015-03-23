# @author Tom Cox <https://github.com/koxzi95>
require "rails_helper"
# rspec spec\requests\contactus_spec.rb
RSpec.describe "Contact Us", type: :request do
	describe "GET #contactus" do
		context "with normal browsing"
		it "responds successfully with an HTTP 200 status code" do
			get '/pages/contactus'
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
end
