require 'test_helper'

class CategoryanswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoryreplay = categoryanswers(:one)
  end

  test "should get index" do
    get categoryanswers_url
    assert_response :success
  end

  test "should get new" do
    get new_categoryreplay_url
    assert_response :success
  end

  test "should create categoryreplay" do
    assert_difference('Categoryreplay.count') do
      post categoryanswers_url, params: { categoryreplay: { category_id: @categoryreplay.category_id, replay_id: @categoryreplay.replay_id } }
    end

    assert_redirected_to categoryreplay_url(Categoryreplay.last)
  end

  test "should show categoryreplay" do
    get categoryreplay_url(@categoryreplay)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoryreplay_url(@categoryreplay)
    assert_response :success
  end

  test "should update categoryreplay" do
    patch categoryreplay_url(@categoryreplay), params: { categoryreplay: { category_id: @categoryreplay.category_id, replay_id: @categoryreplay.replay_id } }
    assert_redirected_to categoryreplay_url(@categoryreplay)
  end

  test "should destroy categoryreplay" do
    assert_difference('Categoryreplay.count', -1) do
      delete categoryreplay_url(@categoryreplay)
    end

    assert_redirected_to categoryanswers_url
  end
end
