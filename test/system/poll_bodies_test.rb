require "application_system_test_case"

class PollBodiesTest < ApplicationSystemTestCase
  setup do
    @poll_body = poll_bodies(:one)
  end

  test "visiting the index" do
    visit poll_bodies_url
    assert_selector "h1", text: "Poll Bodies"
  end

  test "creating a Poll body" do
    visit poll_bodies_url
    click_on "New Poll Body"

    click_on "Create Poll body"

    assert_text "Poll body was successfully created"
    click_on "Back"
  end

  test "updating a Poll body" do
    visit poll_bodies_url
    click_on "Edit", match: :first

    click_on "Update Poll body"

    assert_text "Poll body was successfully updated"
    click_on "Back"
  end

  test "destroying a Poll body" do
    visit poll_bodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poll body was successfully destroyed"
  end
end
