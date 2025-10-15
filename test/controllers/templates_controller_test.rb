require "test_helper"

class TemplatesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get templates_home_url
    assert_response :success
  end
end
