require "application_system_test_case"

class To-doListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "To-do Lists"
  end

  test "creating a To-do list" do
    visit lists_url
    click_on "New To-do List"

    fill_in "Description", with: @list.description
    fill_in "Title", with: @list.title
    click_on "Create To-do list"

    assert_text "To-do list was successfully created"
    click_on "Back"
  end

  test "updating a To-do list" do
    visit lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @list.description
    fill_in "Title", with: @list.title
    click_on "Update To-do list"

    assert_text "To-do list was successfully updated"
    click_on "Back"
  end

  test "destroying a To-do list" do
    visit lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "To-do list was successfully destroyed"
  end
end
