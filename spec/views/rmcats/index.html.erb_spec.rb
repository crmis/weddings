# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\rmcats\index.html.erb_spec.rb
RSpec.describe "rmcats/index", type: :view do
  before(:each) do
    assign(:rmcats, [
                    Rmcat.create!(
                      :rmtype => "Ceremony",
                    ),
                    Rmcat.create!(
                      :rmtype => "Ceremony",
                    )
                  ])
  end
  it "renders a list of rmcats" do
    render
    assert_select "tr>td", :text => "Ceremony".to_s, :count => 2
  end
end
