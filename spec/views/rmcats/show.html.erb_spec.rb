# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\rmcats\show.html.erb_spec.rb
RSpec.describe "rmcats/show", type: :view do
  before(:each) do
    @rmcat = assign(:rmcat, Rmcat.create!(
                            :rmtype => "Ceremony",
                          ))
  end
  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ceremony/)
  end
end
