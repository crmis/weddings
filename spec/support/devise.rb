RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  config.extend UserControllerMacros, :type => :controller
end
