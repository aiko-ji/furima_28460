require 'test_helper'

class Furima28460ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get furima_28460_index_url
    assert_response :success
  end

end
