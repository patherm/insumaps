source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'duktape'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'devise'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'compass-rails','~> 3.0.2'
gem 'webpack-rails', '~> 0.9.1'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'mini_magick', '~> 4.8'
#gem 'graphicsmagick', '~> 1.0', '>= 1.0.5'
gem 'image_magick', '~> 0.1.9'

#gem 'bootstrap', '~> 4.0.0.alpha6'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'sqlite3'
  #gem 'pg'
  #gem 'web-console', '>= 3.3.0'
  #gem 'capybara', '~> 2.13'
  #gem 'selenium-webdriver'
end

group :production do
	gem 'pg'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#gem 'coffee-script-source', '1.8.0'
#gem 'coffee-script-source', '~> 1.12', '>= 1.12.2'
