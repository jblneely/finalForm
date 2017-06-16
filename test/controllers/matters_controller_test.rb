require 'test_helper'

class MattersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get matters_edit_url
    assert_response :success
  end

  test "should get index" do
    get matters_index_url
    assert_response :success
  end

  test "should get new" do
    get matters_new_url
    assert_response :success
  end

  test "should get show" do
    get matters_show_url
    assert_response :success
  end

end
