require 'test_helper'

class ActnControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get actn_edit_url
    assert_response :success
  end

  test "should get index" do
    get actn_index_url
    assert_response :success
  end

  test "should get new" do
    get actn_new_url
    assert_response :success
  end

  test "should get show" do
    get actn_show_url
    assert_response :success
  end

end
