require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it "has a valid factory" do
    expect(create(:admin_user)).to be_valid
  end
end
