require "application_system_test_case"

class AnswersTest < ApplicationSystemTestCase
  setup do
    @replay = answers(:one)
  end

  test "visiting the index" do
    visit answers_url
    assert_selector "h1", text: "Answers"
  end

  test "creating a Replay" do
    visit answers_url
    click_on "New Replay"

    fill_in "Detalle", with: @replay.detalle
    click_on "Create Replay"

    assert_text "Replay was successfully created"
    click_on "Back"
  end

  test "updating a Replay" do
    visit answers_url
    click_on "Edit", match: :first

    fill_in "Detalle", with: @replay.detalle
    click_on "Update Replay"

    assert_text "Replay was successfully updated"
    click_on "Back"
  end

  test "destroying a Replay" do
    visit answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Replay was successfully destroyed"
  end
end
