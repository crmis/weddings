# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\extras_spec.rb
RSpec.describe Extra, :type => :model do

  it "has a valid factory" do
    expect(create(:extra)).to be_valid
  end

  # it "is valid with a extraimg" do
  # 	build(:extra, extraimg: extraimg_file_name 'extra-controller-valid.jpg', extraimg_content_type 'image/jpeg', extraimg_file_size 1.megabyte).should be_valid
  # end

  it "is valid with a name" do
    expect(build(:extra, name: "Extra Name")).to be_valid
  end

  it "is valid with a description" do
    expect(build(:extra, description: "Extra Description")).to be_valid
  end

  it "is valid with a price" do
    expect(build(:extra, price: "100.50")).to be_valid
  end

  it "is valid with a quantity" do
    expect(build(:extra, quantity: "20")).to be_valid
  end

  it "is invalid without a extraimg" do
    expect(build(:extra, extraimg: nil)).not_to be_valid
  end

  it "is invalid without a name" do
    expect(build(:extra, name: nil)).not_to be_valid
  end

  it "is invalid without a description" do
    expect(build(:extra, description: nil)).not_to be_valid
  end

  it "is invalid without a price" do
    expect(build(:extra, price: nil)).not_to be_valid
  end

  it "is invalid without a quantity" do
    expect(build(:extra, quantity: nil)).not_to be_valid
  end
end
