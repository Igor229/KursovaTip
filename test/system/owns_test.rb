require "application_system_test_case"

class OwnsTest < ApplicationSystemTestCase
  setup do
    @own = owns(:one)
  end

  test "visiting the index" do
    visit owns_url
    assert_selector "h1", text: "Owns"
  end

  test "creating a Own" do
    visit owns_url
    click_on "New Own"

    fill_in "Name", with: @own.name
    click_on "Create Own"

    assert_text "Own was successfully created"
    click_on "Back"
  end

  test "updating a Own" do
    visit owns_url
    click_on "Edit", match: :first

    fill_in "Name", with: @own.name
    click_on "Update Own"

    assert_text "Own was successfully updated"
    click_on "Back"
  end

  test "destroying a Own" do
    visit owns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Own was successfully destroyed"
  end
end
