RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  # Clean database after tests
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
  # config.after(:suite) do
  #   FileUtils.remove_file("#{Rails.root}/public/system/rooms/pictures/000/000/001/original/room-controller-valid.jpg", force = false)
  # end
end
