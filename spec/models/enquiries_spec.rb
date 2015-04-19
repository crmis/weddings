# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\enquiry_spec.rb
RSpec.describe Enquiry, :type => :model do

	it "has a valid factory" do
		expect(create(:enquiry)).to be_valid
	end

	it "is valid with a subject" do
		expect(build(:enquiry, subject: "Enquiry Subject")).to be_valid
	end

	it "is valid with a description" do
		expect(build(:enquiry, e_description: "Enquiry Description")).to be_valid
	end

	it "is invalid without a subject" do
		expect(build(:enquiry, subject: nil)).not_to be_valid
	end

	it "is invalid without a description" do
		expect(build(:enquiry, e_description: nil)).not_to be_valid
	end
end
