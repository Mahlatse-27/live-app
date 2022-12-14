require "test_helper"

class Admin::TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_todos_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_todos_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_todos_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_todos_edit_url
    assert_response :success
  end

  test "should get create" do
    get admin_todos_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_todos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_todos_destroy_url
    assert_response :success
  end
end
