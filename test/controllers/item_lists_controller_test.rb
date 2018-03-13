require 'test_helper'

class ItemListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_list = item_lists(:one)
  end

  test "should get index" do
    get item_lists_url, as: :json
    assert_response :success
  end

  test "should create item_list" do
    assert_difference('ItemList.count') do
      post item_lists_url, params: { item_list: { item_id: @item_list.item_id, list_id: @item_list.list_id } }, as: :json
    end

    assert_response 201
  end

  test "should show item_list" do
    get item_list_url(@item_list), as: :json
    assert_response :success
  end

  test "should update item_list" do
    patch item_list_url(@item_list), params: { item_list: { item_id: @item_list.item_id, list_id: @item_list.list_id } }, as: :json
    assert_response 200
  end

  test "should destroy item_list" do
    assert_difference('ItemList.count', -1) do
      delete item_list_url(@item_list), as: :json
    end

    assert_response 204
  end
end
