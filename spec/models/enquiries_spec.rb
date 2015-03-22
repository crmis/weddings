# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\enquiry_spec.rb
RSpec.describe Enquiry, :type => :model do

	it "has a valid factory" do
		create(:enquiry).should be_valid
	end

	it "is valid with a subject" do
		build(:enquiry, subject: "Enquiry Subject").should be_valid
	end

	it "is valid with a subject" do
		build(:enquiry, e_description: "Enquiry Description").should be_valid
	end

	it "is invalid without a subject" do
		build(:enquiry, subject: nil).should_not be_valid
	end

	it "is invalid without a description" do
		build(:enquiry, e_description: nil).should_not be_valid
	end
end
