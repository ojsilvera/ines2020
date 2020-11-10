require "application_system_test_case"

class GroupFieldsTest < ApplicationSystemTestCase
  setup do
    @group_field = group_fields(:one)
  end

  test "visiting the index" do
    visit group_fields_url
    assert_selector "h1", text: "Group Fields"
  end

  test "creating a Group field" do
    visit group_fields_url
    click_on "New Group Field"

    fill_in "Detail", with: @group_field.detail
    fill_in "Field", with: @group_field.field_id
    fill_in "Group", with: @group_field.group_id
    click_on "Create Group field"

    assert_text "Group field was successfully created"
    click_on "Back"
  end

  test "updating a Group field" do
    visit group_fields_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @group_field.detail
    fill_in "Field", with: @group_field.field_id
    fill_in "Group", with: @group_field.group_id
    click_on "Update Group field"

    assert_text "Group field was successfully updated"
    click_on "Back"
  end

  test "destroying a Group field" do
    visit group_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group field was successfully destroyed"
  end
end
