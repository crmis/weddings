# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\rooms_spec.rb
RSpec.describe Room, :type => :model do

	it "has a valid factory" do
		create(:room).should be_valid
	end

	# it "is valid with a picture" do
	# 	build(:extra, picture: nil).should be_valid
	# end

	it "is valid with a name" do
		build(:room, name: "Room Name").should be_valid
	end

	it "is valid with a description" do
		build(:room, description: "Room Description").should be_valid
	end

	it "is valid with a size" do
		build(:room, size: "500").should be_valid
	end

	it "is valid with a capacity" do
		build(:room, capacity: "450").should be_valid
	end

	it "is valid with a price" do
		build(:room, price: "350").should be_valid
	end

	it "is invalid without a picture" do
		build(:room, picture: nil).should_not be_valid
	end

	it "is invalid without a name" do
		build(:room, name: nil).should_not be_valid
	end

	it "is invalid without a description" do
		build(:room, description: nil).should_not be_valid
	end

	it "is invalid without a size" do
		build(:room, size: nil).should_not be_valid
	end

	it "is invalid without a capacity" do
		build(:room, capacity: nil).should_not be_valid
	end

	it "is invalid without a price" do
		build(:room, price: nil).should_not be_valid
	end
end
