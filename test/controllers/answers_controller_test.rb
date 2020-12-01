require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @replay = answers(:one)
  end

  test "should get index" do
    get answers_url
    assert_response :success
  end

  test "should get new" do
    get new_replay_url
    assert_response :success
  end

  test "should create replay" do
    assert_difference('Replay.count') do
      post answers_url, params: { replay: { detalle: @replay.detalle } }
    end

    assert_redirected_to replay_url(Replay.last)
  end

  test "should show replay" do
    get replay_url(@replay)
    assert_response :success
  end

  test "should get edit" do
    get edit_replay_url(@replay)
    assert_response :success
  end

  test "should update replay" do
    patch replay_url(@replay), params: { replay: { detalle: @replay.detalle } }
    assert_redirected_to replay_url(@replay)
  end

  test "should destroy replay" do
    assert_difference('Replay.count', -1) do
      delete replay_url(@replay)
    end

    assert_redirected_to answers_url
  end
end
