# RSpec.configure do |config|
#   # Database cleaner config before and after testing
#   config.before(:suite) do
#     DatabaseCleaner.clean_with(:truncation)
#   end
#
#   config.before(:each) do
#     DatabaseCleaner.strategy = :transaction
#   end
#
#   config.before(:each) do
#     DatabaseCleaner.start
#   end
#
#   config.after(:each) do
#     DatabaseCleaner.clean
#   end
#
#   # config.after(:suite) do
#   #   FileUtils.rm @file_path
#   # end
# end
