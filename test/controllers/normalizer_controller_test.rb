require 'test_helper'

class NormalizerControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get normalizer_index_url
    assert_response :success
  end
end
