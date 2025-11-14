require "test_helper"

class PrivateMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_menus_index_url
    assert_response :success
  end

  test "should get show" do
    get private_menus_show_url
    assert_response :success
  end
end
