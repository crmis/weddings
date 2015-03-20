require 'rails_helper'

RSpec.describe "enquiries/show", type: :view do
  before(:each) do
    @enquiry = assign(:enquiry, Enquiry.create!(
      :subject => "Subject",
      :e_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
  end
end
