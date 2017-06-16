require 'test_helper'

class ActnsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get actns_edit_url
    assert_response :success
  end

  test "should get index" do
    get actns_index_url
    assert_response :success
  end

  test "should get new" do
    get actns_new_url
    assert_response :success
  end

  test "should get show" do
    get actns_show_url
    assert_response :success
  end

end
