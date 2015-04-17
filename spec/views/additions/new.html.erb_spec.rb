require 'rails_helper'

RSpec.describe "additions/new", type: :view do
  before(:each) do
    assign(:addition, Addition.new(
      :booking_id => 1,
      :extra_id => 1
    ))
  end

  it "renders new addition form" do
    render

    assert_select "form[action=?][method=?]", additions_path, "post" do

      assert_select "input#addition_booking_id[name=?]", "addition[booking_id]"

      assert_select "input#addition_extra_id[name=?]", "addition[extra_id]"
    end
  end
end
