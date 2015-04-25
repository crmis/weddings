# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\requests\rooms_spec.rb
RSpec.describe "Rooms", type: :request do
  describe "GET /rooms" do
    context "with normal browsing" do
      it "gets index for rooms" do
        get rooms_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
