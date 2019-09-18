require 'test_helper'

class PremiumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get premiums_index_url
    assert_response :success
  end

  test "should get create" do
    get premiums_create_url
    assert_response :success
  end

  test "should get destroy" do
    get premiums_destroy_url
    assert_response :success
  end

end
