# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\rmcatss\new.html.erb_spec.rb
RSpec.describe "rmcats/new", type: :view do
  before(:each) do
    assign(:rmcat, Rmcat.new(
                     :rmtype => "Ceremony",
                 ))
  end
  it "renders new rmcat form" do
    render
    assert_select "form[action=?][method=?]", rmcats_path, "post" do
      assert_select "input#rmcat_rmtype[name=?]", "rmcat[rmtype]"
    end
  end
end
