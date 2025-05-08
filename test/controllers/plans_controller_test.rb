require "test_helper"

class PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plans_index_url
    assert_response :success
  end

  test "should get select" do
    get plans_select_url
    assert_response :success
  end
end
