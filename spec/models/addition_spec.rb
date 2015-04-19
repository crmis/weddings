# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\addition_spec.rb
RSpec.describe Addition, type: :model do

  it "has a valid factory" do
    expect(create(:addition)).to be_valid
  end

  it "is valid with a booking_id" do
    expect(build(:addition, booking_id: "1")).to be_valid
  end

  it "is valid with a extra_id" do
    expect(build(:addition, extra_id: "1")).to be_valid
  end
end
