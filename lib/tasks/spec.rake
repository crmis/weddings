# Required if CI fails default task
require 'rspec/core/rake_task'
task :default => :spec
RSpec::Core::RakeTask.new
