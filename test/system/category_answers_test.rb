require "application_system_test_case"

class CategoryAnswersTest < ApplicationSystemTestCase
  setup do
    @category_replay = category_answers(:one)
  end

  test "visiting the index" do
    visit category_answers_url
    assert_selector "h1", text: "Category Answers"
  end

  test "creating a Category replay" do
    visit category_answers_url
    click_on "New Category Replay"

    fill_in "Category", with: @category_replay.category_id
    fill_in "Replay", with: @category_replay.replay_id
    click_on "Create Category replay"

    assert_text "Category replay was successfully created"
    click_on "Back"
  end

  test "updating a Category replay" do
    visit category_answers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @category_replay.category_id
    fill_in "Replay", with: @category_replay.replay_id
    click_on "Update Category replay"

    assert_text "Category replay was successfully updated"
    click_on "Back"
  end

  test "destroying a Category replay" do
    visit category_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category replay was successfully destroyed"
  end
end
