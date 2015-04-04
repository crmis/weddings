# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\requests\rmcats_spec.rb
RSpec.describe "Rmcats", type: :request do
	describe "GET /rmcats" do
		context "with no user" do
			it "gets index for rmcats" do
				get rmcats_path
				expect(response).to have_http_status(302)
			end
		end
	end
end
