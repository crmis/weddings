require 'rails_helper'

RSpec.describe "bookings_extras/edit", type: :view do
  before(:each) do
    @bookings_extra = assign(:bookings_extra, BookingsExtra.create!(
      :booking_id => 1,
      :extra_id => 1
    ))
  end

  it "renders the edit bookings_extra form" do
    render

    assert_select "form[action=?][method=?]", bookings_extra_path(@bookings_extra), "post" do

      assert_select "input#bookings_extra_booking_id[name=?]", "bookings_extra[booking_id]"

      assert_select "input#bookings_extra_extra_id[name=?]", "bookings_extra[extra_id]"
    end
  end
end
