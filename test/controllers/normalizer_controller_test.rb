# frozen_string_literal: true

require 'test_helper'

class NormalizerControllerTest < ActionDispatch::IntegrationTest # rubocop:disable Style/Documentation
  test 'should get index' do
    get normalizer_index_url
    assert_response :success
  end
end
