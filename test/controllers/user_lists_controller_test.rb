require 'test_helper'

class UserListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_list = user_lists(:one)
  end

  test "should get index" do
    get user_lists_url, as: :json
    assert_response :success
  end

  test "should create user_list" do
    assert_difference('UserList.count') do
      post user_lists_url, params: { user_list: { list_id: @user_list.list_id, user_id: @user_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_list" do
    get user_list_url(@user_list), as: :json
    assert_response :success
  end

  test "should update user_list" do
    patch user_list_url(@user_list), params: { user_list: { list_id: @user_list.list_id, user_id: @user_list.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_list" do
    assert_difference('UserList.count', -1) do
      delete user_list_url(@user_list), as: :json
    end

    assert_response 204
  end
end
