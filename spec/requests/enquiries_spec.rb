require 'rails_helper'

RSpec.describe "Enquiries", type: :request do
	describe "GET /enquiries" do
		context "with no user" do
			it "gets index for enquiries" do
				get enquiries_path
				expect(response).to have_http_status(302)
			end
		end
	end
end
