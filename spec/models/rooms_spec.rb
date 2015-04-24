# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\rooms_spec.rb
RSpec.describe Room, :type => :model do

  it "has a valid factory" do
    expect(create(:room)).to be_valid
  end

  # it "is valid with a picture" do
  # 	build(:extra, picture: nil).should be_valid
  # end

  it "is valid with a name" do
    expect(build(:room, name: "Room Name")).to be_valid
  end

  it "is valid with a description" do
    expect(build(:room, description: "Room Description")).to be_valid
  end

  it "is valid with a size" do
    expect(build(:room, size: "500")).to be_valid
  end

  it "is valid with a capacity" do
    expect(build(:room, capacity: "450")).to be_valid
  end

  it "is valid with a price" do
    expect(build(:room, price: "350")).to be_valid
  end

  it "is invalid without a picture" do
    expect(build(:room, picture: nil)).not_to be_valid
  end

  it "is invalid without a name" do
    expect(build(:room, name: nil)).not_to be_valid
  end

  it "is invalid without a description" do
    expect(build(:room, description: nil)).not_to be_valid
  end

  it "is invalid without a size" do
    expect(build(:room, size: nil)).not_to be_valid
  end

  it "is invalid without a capacity" do
    expect(build(:room, capacity: nil)).not_to be_valid
  end

  it "is invalid without a price" do
    expect(build(:room, price: nil)).not_to be_valid
  end
end
