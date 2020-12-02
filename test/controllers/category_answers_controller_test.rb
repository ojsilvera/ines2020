require 'test_helper'

class CategoryAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_replay = category_answers(:one)
  end

  test "should get index" do
    get category_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_category_replay_url
    assert_response :success
  end

  test "should create category_replay" do
    assert_difference('CategoryReplay.count') do
      post category_answers_url, params: { category_replay: { category_id: @category_replay.category_id, replay_id: @category_replay.replay_id } }
    end

    assert_redirected_to category_replay_url(CategoryReplay.last)
  end

  test "should show category_replay" do
    get category_replay_url(@category_replay)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_replay_url(@category_replay)
    assert_response :success
  end

  test "should update category_replay" do
    patch category_replay_url(@category_replay), params: { category_replay: { category_id: @category_replay.category_id, replay_id: @category_replay.replay_id } }
    assert_redirected_to category_replay_url(@category_replay)
  end

  test "should destroy category_replay" do
    assert_difference('CategoryReplay.count', -1) do
      delete category_replay_url(@category_replay)
    end

    assert_redirected_to category_answers_url
  end
end
