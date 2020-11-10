require 'test_helper'

class InstCareersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inst_career = inst_careers(:one)
  end

  test "should get index" do
    get inst_careers_url
    assert_response :success
  end

  test "should get new" do
    get new_inst_career_url
    assert_response :success
  end

  test "should create inst_career" do
    assert_difference('InstCareer.count') do
      post inst_careers_url, params: { inst_career: { career_id: @inst_career.career_id, institution_id: @inst_career.institution_id } }
    end

    assert_redirected_to inst_career_url(InstCareer.last)
  end

  test "should show inst_career" do
    get inst_career_url(@inst_career)
    assert_response :success
  end

  test "should get edit" do
    get edit_inst_career_url(@inst_career)
    assert_response :success
  end

  test "should update inst_career" do
    patch inst_career_url(@inst_career), params: { inst_career: { career_id: @inst_career.career_id, institution_id: @inst_career.institution_id } }
    assert_redirected_to inst_career_url(@inst_career)
  end

  test "should destroy inst_career" do
    assert_difference('InstCareer.count', -1) do
      delete inst_career_url(@inst_career)
    end

    assert_redirected_to inst_careers_url
  end
end
