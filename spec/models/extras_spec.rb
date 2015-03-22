# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\extras_spec.rb
RSpec.describe Extra, :type => :model do

	it "has a valid factory" do
		create(:extra).should be_valid
	end

	# it "is valid with a extraimg" do
	# 	build(:extra, extraimg: extraimg_file_name 'extra-controller-valid.jpg', extraimg_content_type 'image/jpeg', extraimg_file_size 1.megabyte).should be_valid
	# end

	it "is valid with a name" do
		build(:extra, name: "Extra Name").should be_valid
	end

	it "is valid with a description" do
		build(:extra, description: "Extra Description").should be_valid
	end

	it "is valid with a price" do
		build(:extra, price: "100.50").should be_valid
	end

	it "is valid with a quantity" do
		build(:extra, quantity: "20").should be_valid
	end

	it "is invalid without a extraimg" do
		build(:extra, extraimg: nil).should_not be_valid
	end

	it "is invalid without a name" do
		build(:extra, name: nil).should_not be_valid
	end

	it "is invalid without a description" do
		build(:extra, description: nil).should_not be_valid
	end

	it "is invalid without a price" do
		build(:extra, price: nil).should_not be_valid
	end

	it "is invalid without a quantity" do
		build(:extra, quantity: nil).should_not be_valid
	end
end
