# frozen_string_literal: true

require 'test_helper'

class ModsulatorControllerTest < ActionDispatch::IntegrationTest # rubocop:disable Style/Documentation
  test 'should get index' do
    get modsulator_index_url
    assert_response :success
  end
end
