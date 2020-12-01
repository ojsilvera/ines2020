require "application_system_test_case"

class PollHeadersTest < ApplicationSystemTestCase
  setup do
    @poll_header = poll_headers(:one)
  end

  test "visiting the index" do
    visit poll_headers_url
    assert_selector "h1", text: "Poll Headers"
  end

  test "creating a Poll header" do
    visit poll_headers_url
    click_on "New Poll Header"

    fill_in "Date", with: @poll_header.date
    fill_in "Edad", with: @poll_header.edad
    fill_in "Gender", with: @poll_header.gender_id
    fill_in "Institution", with: @poll_header.institution_id
    click_on "Create Poll header"

    assert_text "Poll header was successfully created"
    click_on "Back"
  end

  test "updating a Poll header" do
    visit poll_headers_url
    click_on "Edit", match: :first

    fill_in "Date", with: @poll_header.date
    fill_in "Edad", with: @poll_header.edad
    fill_in "Gender", with: @poll_header.gender_id
    fill_in "Institution", with: @poll_header.institution_id
    click_on "Update Poll header"

    assert_text "Poll header was successfully updated"
    click_on "Back"
  end

  test "destroying a Poll header" do
    visit poll_headers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poll header was successfully destroyed"
  end
end
