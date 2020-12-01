require 'test_helper'

class PollBodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_body = poll_bodies(:one)
  end

  test "should get index" do
    get poll_bodies_url
    assert_response :success
  end

  test "should get new" do
    get new_poll_body_url
    assert_response :success
  end

  test "should create poll_body" do
    assert_difference('PollBody.count') do
      post poll_bodies_url, params: { poll_body: { categoryreplay_id: @poll_body.categoryreplay_id, poll_header_id: @poll_body.poll_header_id, question_id: @poll_body.question_id } }
    end

    assert_redirected_to poll_body_url(PollBody.last)
  end

  test "should show poll_body" do
    get poll_body_url(@poll_body)
    assert_response :success
  end

  test "should get edit" do
    get edit_poll_body_url(@poll_body)
    assert_response :success
  end

  test "should update poll_body" do
    patch poll_body_url(@poll_body), params: { poll_body: { categoryreplay_id: @poll_body.categoryreplay_id, poll_header_id: @poll_body.poll_header_id, question_id: @poll_body.question_id } }
    assert_redirected_to poll_body_url(@poll_body)
  end

  test "should destroy poll_body" do
    assert_difference('PollBody.count', -1) do
      delete poll_body_url(@poll_body)
    end

    assert_redirected_to poll_bodies_url
  end
end
