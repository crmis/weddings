require 'rails_helper'

RSpec.describe "additions/edit", type: :view do
  before(:each) do
    @addition = assign(:addition, Addition.create!(
      :booking_id => 1,
      :extra_id => 1
    ))
  end

  it "renders the edit addition form" do
    render

    assert_select "form[action=?][method=?]", addition_path(@addition), "post" do

      assert_select "input#addition_booking_id[name=?]", "addition[booking_id]"

      assert_select "input#addition_extra_id[name=?]", "addition[extra_id]"
    end
  end
end
