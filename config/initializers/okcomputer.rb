# frozen_string_literal: true

OkComputer.mount_at = 'status'
OkComputer.check_in_parallel = true

OkComputer::Registry.register 'ruby_version', OkComputer::RubyVersionCheck.new
# modsulator-app-rails does not use a database
OkComputer::Registry.deregister 'database'
