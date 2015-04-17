require 'rails_helper'

RSpec.describe "bookings_extras/index", type: :view do
  before(:each) do
    assign(:bookings_extras, [
      BookingsExtra.create!(
        :booking_id => 1,
        :extra_id => 2
      ),
      BookingsExtra.create!(
        :booking_id => 1,
        :extra_id => 2
      )
    ])
  end

  it "renders a list of bookings_extras" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
