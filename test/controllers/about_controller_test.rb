# frozen_string_literal: true

require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest # rubocop:disable Style/Documentation
  test 'should get index' do
    get about_index_url
    assert_response :success
  end
end
