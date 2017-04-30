require 'test_helper'

class UserprofileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userprofile_index_url
    assert_response :success
  end

  test "should get show" do
    get userprofile_show_url
    assert_response :success
  end

  test "should get edit" do
    get userprofile_edit_url
    assert_response :success
  end

end
