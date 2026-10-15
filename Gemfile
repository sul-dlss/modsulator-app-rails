# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'csv'
gem 'honeybadger'
gem 'irb'
gem 'okcomputer'
gem 'puma'
gem 'rails', '~> 8.1.0'
gem 'roo' # Parse spreadsheet uploads with roo

group :development, :test do
  # Security audit for known security defects in code (use config/brakeman.ignore to ignore issues)
  gem 'brakeman', require: false
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'equivalent-xml' # For ignoring_attr_values() with arguments
  gem 'rspec_junit_formatter' # For CircleCI
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-factory_bot'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'rubocop-rspec_rails'
  gem 'simplecov'
end

group :deploy do
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'dlss-capistrano'
end
