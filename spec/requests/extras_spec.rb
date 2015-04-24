# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\requests\extras_spec.rb
RSpec.describe "Extras", type: :request do
  describe "GET /extras" do
    context "with normal browsing" do
      it "gets index for extras" do
        get extras_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
