require 'test_helper'

class PollHeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_header = poll_headers(:one)
  end

  test "should get index" do
    get poll_headers_url
    assert_response :success
  end

  test "should get new" do
    get new_poll_header_url
    assert_response :success
  end

  test "should create poll_header" do
    assert_difference('PollHeader.count') do
      post poll_headers_url, params: { poll_header: { age: @poll_header.age, date: @poll_header.date } }
    end

    assert_redirected_to poll_header_url(PollHeader.last)
  end

  test "should show poll_header" do
    get poll_header_url(@poll_header)
    assert_response :success
  end

  test "should get edit" do
    get edit_poll_header_url(@poll_header)
    assert_response :success
  end

  test "should update poll_header" do
    patch poll_header_url(@poll_header), params: { poll_header: { age: @poll_header.age, date: @poll_header.date } }
    assert_redirected_to poll_header_url(@poll_header)
  end

  test "should destroy poll_header" do
    assert_difference('PollHeader.count', -1) do
      delete poll_header_url(@poll_header)
    end

    assert_redirected_to poll_headers_url
  end
end
