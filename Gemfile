# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'honeybadger'
gem 'irb'
gem 'okcomputer'
gem 'puma'
gem 'rails', '~> 8.0.0'
gem 'roo', '~> 2.9' # Parse spreadsheet uploads with roo
gem 'stanford-mods-normalizer'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'equivalent-xml', '>= 0.6.0' # For ignoring_attr_values() with arguments
  gem 'rspec_junit_formatter' # For CircleCI
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop', '~> 1.24'
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

gem 'csv', '~> 3.3'
