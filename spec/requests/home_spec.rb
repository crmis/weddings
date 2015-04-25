# @author Tom Cox <https://github.com/koxzi95>
require "rails_helper"
# rspec spec\requests\home_spec.rb
RSpec.describe "Home", type: :request do
  describe "GET #home" do
    context "with normal browsing"
    it "responds successfully with an HTTP 200 status code" do
      get '/pages/home'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
