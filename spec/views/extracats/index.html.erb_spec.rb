# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\extracats\index.html.erb_spec.rb
RSpec.describe "extracats/index", type: :view do
  before(:each) do
    assign(:extracats, [
                         Extracat.create!(
                             :extratype => "MyString",
                         ),
                         Extracat.create!(
                             :extratype => "MyString",
                         )
                     ])
  end
  it "renders a list of extracats" do
    render
    assert_select "tr>td", :text => "My String".to_s, :count => 2
  end
end
