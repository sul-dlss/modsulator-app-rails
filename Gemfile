# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'deprecation'
gem 'honeybadger'
gem 'puma', '~> 5.3' # the app server
gem 'rails', '~> 6.1.0'
# Pin roo dependency to a thus far unreleased commit that brings Ruby 3 compatibility
gem 'roo', github: 'roo-rb/roo', ref: '868d4ea419cf393c9d8832838d96c82e47116d2f' # gem 'roo', '>= 2.7.1'
gem 'stanford-mods-normalizer'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'coveralls', require: false
  gem 'equivalent-xml', '>= 0.6.0' # For ignoring_attr_values() with arguments
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'rubocop'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :deploy do
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'dlss-capistrano'
end
