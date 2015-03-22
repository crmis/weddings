# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\models\rmcats_spec.rb
RSpec.describe Rmcat, :type => :model do

	it "has a valid factory" do
		create(:rmcat).should be_valid
	end

	it "is valid with a rmtype" do
		build(:rmcat, rmtype: "rmtype").should be_valid
	end

	# titleize error?
	# it "is invalid without a rmtype" do
	# 	build(:rmcat, rmtype: nil).should_not be_valid
	# end
end
