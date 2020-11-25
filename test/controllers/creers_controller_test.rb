require 'test_helper'

class CreersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creer = creers(:one)
  end

  test "should get index" do
    get creers_url
    assert_response :success
  end

  test "should get new" do
    get new_creer_url
    assert_response :success
  end

  test "should create creer" do
    assert_difference('Creer.count') do
      post creers_url, params: { creer: { name: @creer.name } }
    end

    assert_redirected_to creer_url(Creer.last)
  end

  test "should show creer" do
    get creer_url(@creer)
    assert_response :success
  end

  test "should get edit" do
    get edit_creer_url(@creer)
    assert_response :success
  end

  test "should update creer" do
    patch creer_url(@creer), params: { creer: { name: @creer.name } }
    assert_redirected_to creer_url(@creer)
  end

  test "should destroy creer" do
    assert_difference('Creer.count', -1) do
      delete creer_url(@creer)
    end

    assert_redirected_to creers_url
  end
end
