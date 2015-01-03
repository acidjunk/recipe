source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'dotenv-rails', :groups => [:development, :test]
ruby '2.0.0'
gem 'rails', '4.0.3'

#Use bootstrap and fast asset pipeline
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'

#Bootsy HTML editor https://github.com/volmer/bootsyr
gem 'bootsy' 

#File uploads
gem 'paperclip', '~> 4.1'
gem 'aws-sdk'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'

#Add Faker to test with fake data more easily
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1' #used for Testing the user
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use Haml
gem 'haml-rails'

# Use Devise for authentication
gem 'devise'
gem 'devise-i18n-views'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Add tagging
gem 'acts-as-taggable-on'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.17.1'
  gem 'rails_12factor', '0.0.2'
end

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
