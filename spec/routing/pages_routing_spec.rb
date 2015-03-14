# @author Tom Cox <https://github.com/koxzi95>
require "rails_helper"

RSpec.describe PagesController, :type => :controller do
	describe "GET #home" do
		it "responds successfully with an HTTP 200 status code" do
			get :home
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end

	describe "GET #contactus" do
		it "responds successfully with an HTTP 200 status code" do
			get :contactus
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
end
