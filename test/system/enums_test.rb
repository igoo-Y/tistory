require "application_system_test_case"

class EnumsTest < ApplicationSystemTestCase
  setup do
    @enum = enums(:one)
  end

  test "visiting the index" do
    visit enums_url
    assert_selector "h1", text: "Enums"
  end

  test "creating a Enum" do
    visit enums_url
    click_on "New Enum"

    fill_in "Content", with: @enum.content
    fill_in "Status", with: @enum.status
    fill_in "Title", with: @enum.title
    click_on "Create Enum"

    assert_text "Enum was successfully created"
    click_on "Back"
  end

  test "updating a Enum" do
    visit enums_url
    click_on "Edit", match: :first

    fill_in "Content", with: @enum.content
    fill_in "Status", with: @enum.status
    fill_in "Title", with: @enum.title
    click_on "Update Enum"

    assert_text "Enum was successfully updated"
    click_on "Back"
  end

  test "destroying a Enum" do
    visit enums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enum was successfully destroyed"
  end
end
