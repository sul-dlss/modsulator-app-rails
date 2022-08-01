# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 7.0.0'

gem 'deprecation'
gem 'honeybadger'
gem 'okcomputer'
gem 'puma', '~> 5.3' # the app server
# Parse spreadsheet uploads with roo
gem 'roo', '~> 2.9'
gem 'stanford-mods-normalizer'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'equivalent-xml', '>= 0.6.0' # For ignoring_attr_values() with arguments
  gem 'rspec_junit_formatter' # For CircleCI
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop', '~> 1.24'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'simplecov'
end

group :deploy do
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'dlss-capistrano'
end
