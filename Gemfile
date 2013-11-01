source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# turbolinks playing nicely with jquery document.ready
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use puma as the app server
gem 'puma'

# API Connection
gem 'rest-client'
gem 'uuidtools'

#view helpers
gem 'humanize_boolean'

#stop loggging assets
gem 'quiet_assets'

group :development do
  gem 'better_errors', '>=1.0.1'
  gem 'binding_of_caller'
  gem 'meta_request'
  #gem 'bullet'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
end


group :test do
  gem 'capybara'
  gem 'launchy'

  #gem 'capybara-mechanize' #if we need to check external http
  # install gem outside if used in OS X: rb-fsevent
  # install gem outside if used in linux: rb-inotify

  gem 'vcr' #also gem install this one outside bundler
  gem 'webmock' #also gem install this one outside bundler
  gem 'timecop'
end

# Use Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
group :test, :development do
  gem 'debase'
  gem 'ruby-debug-ide'
end
