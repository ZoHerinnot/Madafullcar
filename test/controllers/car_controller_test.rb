require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_index_url
    assert_response :success
  end

  test "should get show" do
    get car_show_url
    assert_response :success
  end

  test "should get new" do
    get car_new_url
    assert_response :success
  end

  test "should get create" do
    get car_create_url
    assert_response :success
  end

  test "should get edit" do
    get car_edit_url
    assert_response :success
  end

  test "should get updatedestroy" do
    get car_updatedestroy_url
    assert_response :success
  end

end
