# frozen_string_literal: true

server 'modsulator-app-stage.stanford.edu', user: 'modsulator', roles: %w[web db app]

set :rails_env, 'production'
set :bundle_without, %w[test development deploy].join(' ')
