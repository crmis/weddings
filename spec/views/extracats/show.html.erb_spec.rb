# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\extracats\show.html.erb_spec.rb
RSpec.describe "extracats/show", type: :view do
  before(:each) do
    @extracat = assign(:extracat, Extracat.create!(
                                    :extratype => "Flowers",
                                ))
  end
  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Flowers/)
  end
end
