source 'http://rubygems.org'
# Generated with rails 4.2.0 on ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin14.0]
# The ruby version should be active in the production repo. Heroku
# ruby '2.2.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'.
gem 'rails', '4.2.1'
# Use SCSS for stylesheets.
gem 'sass-rails', '~> 5.0.3'
# Use Uglifier as compressor for JavaScript assets.
gem 'uglifier', '~> 2.7.1'
# Use CoffeeScript for .coffee assets and views.
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library.
gem 'jquery-rails', '~> 4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'

group :production do
	# Postgres for production Active Record database.
	gem 'pg', '~> 0.18.1'
	# 12 Factor App Gem for Heroku.
	gem 'rails_12factor', '~> 0.0.3'
	# New Relic for application metrics.
	gem 'newrelic_rpm', '~> 3.11.1.284'
end

group :development do
	# Use sqlite3 as the database for Active Record.
	gem 'sqlite3', '~> 1.3.10'
	# seed_dump creates a seeds file from the active database. Run: rake db:seed:dump
	gem 'seed_dump', '3.2.2'
	# rspec for dependency
	gem 'rspec', '~> 3.2.0'
	# rspec for BDD tests (Behaviour Driven Development)
	gem 'rspec-rails', '~> 3.2.1'
	# Factory Girl for testing setup
	gem 'factory_girl_rails', '~> 4.5.0'
	# Database Cleaner for testing
	gem 'database_cleaner', '~> 1.4.0'
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring', '~> 1.3.3'
end

group :doc, :development do
	# Yard for documentation, replaces sdoc/rdoc.
	gem 'yard', '~> 0.8.7.6'
end

group :test do
	# Codeclimate Test Reporting.
	gem 'codeclimate-test-reporter', '~> 0.4.7', require: nil
end

# Devise for authentication.
gem 'devise', '~> 3.4.1'

# Cancancan for user roles.
gem 'cancancan', '~> 1.10.1'

# Paperclip for better image uploads.
gem 'paperclip', '~> 4.2.1'

# Viewable to make rooms viewable.
gem 'viewable', '~> 0.5.16'

# Mail Form gem for sending mail directly from a form.
gem 'mail_form', '~> 1.5.0'

# Bundle on OSX and Linux only. (including deployment)
platforms :ruby do
	# Unicorn for worker process management (won't bundle on non-unix)
	# => should now only bundle on OSX & Linux. And hopefully deploy!
	gem 'unicorn', '~> 4.8.3'
	# CLI gem for atom-beautify package. (Ctrl+Alt+B)
	gem 'ruby-beautify', '~> 0.97.2'
end

platforms :mingw, :mswin, :x64_mingw, :jruby do
	# tz-info for windows timezone data.
	gem 'tzinfo-data', '~> 1.2015.1'
	# Responders gem, required on windows for viewable
	gem 'responders', '~> 2.0'
end
