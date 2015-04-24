# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\views\extracats\new.html.erb_spec.rb
RSpec.describe "extracats/new", type: :view do
  before(:each) do
    assign(:extracat, Extracat.new(
                        :extratype => "Flowers",
                    ))
  end
  it "renders new extracat form" do
    render
    assert_select "form[action=?][method=?]", extracats_path, "post" do
      assert_select "input#extracat_extratype[name=?]", "extracat[extratype]"
    end
  end
end
