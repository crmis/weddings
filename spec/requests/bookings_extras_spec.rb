require 'rails_helper'

RSpec.describe "BookingsExtras", type: :request do
  describe "GET /bookings_extras" do
    it "works! (now write some real specs)" do
      get bookings_extras_path
      expect(response).to have_http_status(200)
    end
  end
end
