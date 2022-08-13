require "test_helper"

class Controllers::Api::ViControllerTest < ActionDispatch::IntegrationTest
  test "should get todos" do
    get controllers_api_vi_todos_url
    assert_response :success
  end
end
