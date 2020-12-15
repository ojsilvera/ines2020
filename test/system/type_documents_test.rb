require "application_system_test_case"

class TypeDocumentsTest < ApplicationSystemTestCase
  setup do
    @type_document = type_documents(:one)
  end

  test "visiting the index" do
    visit type_documents_url
    assert_selector "h1", text: "Type Documents"
  end

  test "creating a Type document" do
    visit type_documents_url
    click_on "New Type Document"

    fill_in "Abbreviation", with: @type_document.abbreviation
    fill_in "Name", with: @type_document.name
    click_on "Create Type document"

    assert_text "Type document was successfully created"
    click_on "Back"
  end

  test "updating a Type document" do
    visit type_documents_url
    click_on "Edit", match: :first

    fill_in "Abbreviation", with: @type_document.abbreviation
    fill_in "Name", with: @type_document.name
    click_on "Update Type document"

    assert_text "Type document was successfully updated"
    click_on "Back"
  end

  test "destroying a Type document" do
    visit type_documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type document was successfully destroyed"
  end
end
