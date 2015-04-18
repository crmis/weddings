require 'rails_helper'

RSpec.describe "Additions", type: :request do
	describe "GET /additions" do
		it "works! (now write some real specs)" do
			get additions_path
			expect(response).to have_http_status(200)
		end
	end
end
