require 'rails_helper'

RSpec.describe "enquiries/index", type: :view do
  before(:each) do
    assign(:enquiries, [
      Enquiry.create!(
        :subject => "Subject",
        :e_description => "MyText"
      ),
      Enquiry.create!(
        :subject => "Subject",
        :e_description => "MyText"
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
