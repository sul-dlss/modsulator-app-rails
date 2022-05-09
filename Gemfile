# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'deprecation'
gem 'honeybadger'
gem 'okcomputer'
gem 'puma', '~> 5.3' # the app server
gem 'rails', '~> 6.1.0'
# Parse spreadsheet uploads with roo
gem 'roo', '~> 2.9'
gem 'stanford-mods-normalizer'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'coveralls', require: false
  gem 'equivalent-xml', '>= 0.6.0' # For ignoring_attr_values() with arguments
  gem 'rspec_junit_formatter' # For CircleCI
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'rubocop', '~> 1.24'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :deploy do
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'dlss-capistrano', github: 'sul-dlss/dlss-capistrano', branch: 'ruby-version-reporting'
end
