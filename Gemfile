source 'https://rubygems.org'

# Monitoring
gem 'rack-timeout', '~> 0.1.0beta3'
gem 'newrelic_rpm', '~> 3.9.4.245'

# gem 'airbrake'                # use with airbrake.io or errbit
# gem 'airbrake_user_attributes'  # use with self-hosted errbit; see config/initializers/airbrake.rb
# gem 'rack-google-analytics'

# Data
gem 'pg', '~> 0.17.1'
gem 'schema_plus', '~> 1.5.3'
# gem 'jbuilder'

# Assets
gem 'sass-rails', '~> 4.0.3'
gem 'haml-rails', '~> 0.5.3'
gem 'simple_form', '~> 3.0.2'
gem 'uglifier', '~> 2.5.3'
gem 'headjs-rails', '~> 0.4.2'

# Javascript
gem 'jquery-rails', '~> 3.1.2'
gem 'turbolinks', '~> 2.3.0'
gem 'jquery-turbolinks', '~> 2.1.0'
gem 'nprogress-rails', '~> 0.1.6.2'

# CoffeeScript
# Not needed in production if precompiling assets
gem 'coffee-rails', '~> 4.0.1'

# Uncomment if node.js is not installed
# gem 'therubyracer', platforms: :ruby

# Design
gem 'bootstrap-sass', '~> 3.2.0.2'
# gem 'bourbon'
# gem 'neat'
# gem 'country_select'

# Email
gem 'premailer-rails', '~> 1.8.0'

# Authentication
gem 'devise', '~> 3.2.4'
gem 'cancan', '~> 1.6.10'
gem 'omniauth', '~> 1.2.2'
gem 'omniauth-facebook', '~> 2.0.0'
gem 'omniauth-twitter', '~> 1.0.1'
gem 'omniauth-google-oauth2', '~> 0.2.5'
# gem 'omniauth-linkedin'
gem 'omniauth-spotify', '~> 0.0.5'
# gem 'omniauth-persona'


# Var env
gem 'figaro', '~> 1.0.0'

# Admin
gem 'rails_admin', '~> 0.6.3'

# Workers
gem 'sidekiq', '~> 3.2.1'
gem 'devise-async', '~> 0.9.0'
gem 'sinatra', require: false
gem 'rails-i18n', '~> 4.0.0'

# Utils
gem 'addressable', '~> 2.3.6'
gem 'settingslogic', '~> 2.0.9'
gem 'carrierwave', '~> 0.9'
gem 'echowrap', '~> 0.1.4'
gem 'will_paginate', '~> 3.0.4'
gem "will_paginate-bootstrap", "~> 1.0.0"

group :development do
  # Docs
  gem 'sdoc', require: false    # bundle exec rake doc:rails

  # Errors
  gem 'better_errors'
  gem 'binding_of_caller'     # extra features for better_errors
  gem 'meta_request'          # for rails_panel chrome extension

  # Deployment
  # gem 'capistrano'

  # Guard
  gem 'guard-rspec'
  # gem 'guard-livereload'
  # gem 'rack-livereload'
  
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'terminal-notifier-guard', group: [:development]  # notify terminal when specs run
    gem 'terminal-notifier', group: [:development]
  end
end

group :development, :test do
  # monitor file changes without hammering the disk
  gem 'rb-fsevent' if RUBY_PLATFORM.downcase.include?("darwin")
  gem 'rb-inotify' if RUBY_PLATFORM.downcase.include?("linux")
  
  # Use spring or zeus
  gem 'spring'                  # keep application running in the background
  gem 'spring-commands-rspec'
  # gem 'zeus'                  # required in gemfile for guard

  # Debugging
  # gem 'pry'                   # better than irb
  # gem 'byebug'                # ruby 2.0 debugger with built-in pry
  gem 'pry-rails'               # adds rails specific commands to pry
  gem 'pry-byebug'              # add debugging commands to pry
  gem 'pry-stack_explorer'      # navigate call stack
  # gem 'pry-rescue'            # start pry session on uncaught exception
  # gem 'pry-doc'               # browse docs from console
  # gem 'pry-git'               # add git support to console
  # gem 'pry-remote'            # connect remotely to pry console
  # gem 'coolline'              # sytax highlighting as you type
  # gem 'coderay'               # use with coolline
  gem 'awesome_print'           # pretty pring debugging output

  # Testing
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'capybara-webkit'
  # gem 'poltergeist'           # alternative to capybara-webkit
  # gem 'capybara-firebug'
  # gem 'launchy'               # save_and_open_page support for rspec
  # gem 'zeus-parallel_tests'   # speed up lengthy tests

  # Logging
  gem 'quiet_assets'
end

group :test do
  gem 'minitest'                # include minitest to prevent require 'minitest/autorun' warnings

  # Helpers
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  # gem 'timecop'               # Mock Time

  # Coverage
  gem 'simplecov', require: false
  # gem 'coveralls', :require => false

  gem 'rspec-sidekiq'
end

group :production do
  gem 'dalli'                   # memcached
  gem 'memcachier'              # heroku add-on for auto config of dalli
  gem 'unicorn'
  gem 'rails_12factor'          # https://devcenter.heroku.com/articles/rails4
end

# Pour windows
# gem 'tzinfo-data', platforms: [:mingw, :mswin]
# gem 'tzinfo'