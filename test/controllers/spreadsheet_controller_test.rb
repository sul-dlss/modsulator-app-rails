# frozen_string_literal: true

require 'test_helper'

class SpreadsheetControllerTest < ActionDispatch::IntegrationTest # rubocop:disable Style/Documentation
  test 'should get index' do
    get spreadsheet_index_url
    assert_response :success
  end
end
