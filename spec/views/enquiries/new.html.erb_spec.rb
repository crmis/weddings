require 'rails_helper'

RSpec.describe "enquiries/new", type: :view do
  before(:each) do
    assign(:enquiry, Enquiry.new(
      :subject => "MyString",
      :e_description => "MyText"
    ))
  end

  it "renders new enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiries_path, "post" do

      assert_select "input#enquiry_subject[name=?]", "enquiry[subject]"

      assert_select "textarea#enquiry_e_description[name=?]", "enquiry[e_description]"
    end
  end
end
