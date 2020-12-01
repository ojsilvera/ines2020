require "application_system_test_case"

class CategoryanswersTest < ApplicationSystemTestCase
  setup do
    @categoryreplay = categoryanswers(:one)
  end

  test "visiting the index" do
    visit categoryanswers_url
    assert_selector "h1", text: "Categoryanswers"
  end

  test "creating a Categoryreplay" do
    visit categoryanswers_url
    click_on "New Categoryreplay"

    fill_in "Category", with: @categoryreplay.category_id
    fill_in "Replay", with: @categoryreplay.replay_id
    click_on "Create Categoryreplay"

    assert_text "Categoryreplay was successfully created"
    click_on "Back"
  end

  test "updating a Categoryreplay" do
    visit categoryanswers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @categoryreplay.category_id
    fill_in "Replay", with: @categoryreplay.replay_id
    click_on "Update Categoryreplay"

    assert_text "Categoryreplay was successfully updated"
    click_on "Back"
  end

  test "destroying a Categoryreplay" do
    visit categoryanswers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categoryreplay was successfully destroyed"
  end
end
