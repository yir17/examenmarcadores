require "application_system_test_case"

class BookindsTest < ApplicationSystemTestCase
  setup do
    @bookind = bookinds(:one)
  end

  test "visiting the index" do
    visit bookinds_url
    assert_selector "h1", text: "Bookinds"
  end

  test "creating a Bookind" do
    visit bookinds_url
    click_on "New Bookind"

    fill_in "Name", with: @bookind.name
    click_on "Create Bookind"

    assert_text "Bookind was successfully created"
    click_on "Back"
  end

  test "updating a Bookind" do
    visit bookinds_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bookind.name
    click_on "Update Bookind"

    assert_text "Bookind was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookind" do
    visit bookinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookind was successfully destroyed"
  end
end
