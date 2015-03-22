# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\requests\extracats_spec.rb
RSpec.describe "Extracats", type: :request do
	describe "GET /extracats" do
		context "with no user" do
			it "gets index for extracats" do
				get extracats_path
				expect(response).to have_http_status(302)
			end
		end
	end
end
