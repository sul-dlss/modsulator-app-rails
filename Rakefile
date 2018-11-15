# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

Rake::Task['spec'].clear
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'

  # The modsulator integration_tests are very slow
  t.exclude_pattern = 'spec/integration_tests/*_spec.rb'
end

# This gives us task for managing the gem (e.g.: rake release)
Bundler::GemHelper.install_tasks
