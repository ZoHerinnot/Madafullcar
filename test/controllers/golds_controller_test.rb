require 'test_helper'

class GoldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golds_index_url
    assert_response :success
  end

  test "should get create" do
    get golds_create_url
    assert_response :success
  end

  test "should get destroy" do
    get golds_destroy_url
    assert_response :success
  end

end
