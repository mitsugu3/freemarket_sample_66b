require 'test_helper'

class ProductsnewControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get productsnew_new_url
    assert_response :success
  end

  test "should get create" do
    get productsnew_create_url
    assert_response :success
  end

end
