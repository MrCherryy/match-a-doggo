require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dashboard_show_url
    assert_response :success
  end

  test "should get dogs" do
    get dashboard_dogs_url
    assert_response :success
  end

  test "should get requests" do
    get dashboard_requests_url
    assert_response :success
  end
end
