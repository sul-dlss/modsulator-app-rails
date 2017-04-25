require 'test_helper'

class ModsulatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get modsulator_index_url
    assert_response :success
  end

end
