require "application_system_test_case"

class InstCareersTest < ApplicationSystemTestCase
  setup do
    @inst_career = inst_careers(:one)
  end

  test "visiting the index" do
    visit inst_careers_url
    assert_selector "h1", text: "Inst Careers"
  end

  test "creating a Inst career" do
    visit inst_careers_url
    click_on "New Inst Career"

    fill_in "Career", with: @inst_career.career_id
    fill_in "Institution", with: @inst_career.institution_id
    click_on "Create Inst career"

    assert_text "Inst career was successfully created"
    click_on "Back"
  end

  test "updating a Inst career" do
    visit inst_careers_url
    click_on "Edit", match: :first

    fill_in "Career", with: @inst_career.career_id
    fill_in "Institution", with: @inst_career.institution_id
    click_on "Update Inst career"

    assert_text "Inst career was successfully updated"
    click_on "Back"
  end

  test "destroying a Inst career" do
    visit inst_careers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inst career was successfully destroyed"
  end
end
