require 'test_helper'

class MatterControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get matter_edit_url
    assert_response :success
  end

  test "should get index" do
    get matter_index_url
    assert_response :success
  end

  test "should get new" do
    get matter_new_url
    assert_response :success
  end

  test "should get show" do
    get matter_show_url
    assert_response :success
  end

end
