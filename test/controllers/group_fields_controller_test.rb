require 'test_helper'

class GroupFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_field = group_fields(:one)
  end

  test "should get index" do
    get group_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_group_field_url
    assert_response :success
  end

  test "should create group_field" do
    assert_difference('GroupField.count') do
      post group_fields_url, params: { group_field: { detail: @group_field.detail, field_id: @group_field.field_id, group_id: @group_field.group_id } }
    end

    assert_redirected_to group_field_url(GroupField.last)
  end

  test "should show group_field" do
    get group_field_url(@group_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_field_url(@group_field)
    assert_response :success
  end

  test "should update group_field" do
    patch group_field_url(@group_field), params: { group_field: { detail: @group_field.detail, field_id: @group_field.field_id, group_id: @group_field.group_id } }
    assert_redirected_to group_field_url(@group_field)
  end

  test "should destroy group_field" do
    assert_difference('GroupField.count', -1) do
      delete group_field_url(@group_field)
    end

    assert_redirected_to group_fields_url
  end
end
