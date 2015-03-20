# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'

	# bundle exec rspec spec\models\rooms_spec.rb

RSpec.describe Room, :type => :model do
  # pending "add some examples to #{__FILE__}"

	#describe "filter last name by letter" do

  it "has a valid factory" do
    create(:room).should be_valid
  end

	it "is invalid without a firstname" do
		build(:room, name: nil).should_not be_valid
	end

	# continue with attrs
end
