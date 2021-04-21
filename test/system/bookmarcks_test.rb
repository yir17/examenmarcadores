require "application_system_test_case"

class BookmarcksTest < ApplicationSystemTestCase
  setup do
    @bookmarck = bookmarcks(:one)
  end

  test "visiting the index" do
    visit bookmarcks_url
    assert_selector "h1", text: "Bookmarcks"
  end

  test "creating a Bookmarck" do
    visit bookmarcks_url
    click_on "New Bookmarck"

    fill_in "Bookind", with: @bookmarck.bookind_id
    fill_in "Category", with: @bookmarck.category_id
    fill_in "Direction", with: @bookmarck.direction
    fill_in "Name", with: @bookmarck.name
    click_on "Create Bookmarck"

    assert_text "Bookmarck was successfully created"
    click_on "Back"
  end

  test "updating a Bookmarck" do
    visit bookmarcks_url
    click_on "Edit", match: :first

    fill_in "Bookind", with: @bookmarck.bookind_id
    fill_in "Category", with: @bookmarck.category_id
    fill_in "Direction", with: @bookmarck.direction
    fill_in "Name", with: @bookmarck.name
    click_on "Update Bookmarck"

    assert_text "Bookmarck was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmarck" do
    visit bookmarcks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmarck was successfully destroyed"
  end
end
