require 'rails_helper'

RSpec.describe "bookings_extras/new", type: :view do
  before(:each) do
    assign(:bookings_extra, BookingsExtra.new(
      :booking_id => 1,
      :extra_id => 1
    ))
  end

  it "renders new bookings_extra form" do
    render

    assert_select "form[action=?][method=?]", bookings_extras_path, "post" do

      assert_select "input#bookings_extra_booking_id[name=?]", "bookings_extra[booking_id]"

      assert_select "input#bookings_extra_extra_id[name=?]", "bookings_extra[extra_id]"
    end
  end
end
