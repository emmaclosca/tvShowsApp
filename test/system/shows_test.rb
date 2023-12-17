require "application_system_test_case"

class ShowsTest < ApplicationSystemTestCase
  setup do
    @show = shows(:one)
  end

  test "visiting the index" do
    visit shows_url
    assert_selector "h1", text: "Shows"
  end

  # In test_should_create_show
test "should create show" do
  visit shows_url
  click_on "New TV Show"

  fill_in "Genre", with: @show.genre
  fill_in "Language", with: @show.language
  fill_in "Name", with: @show.name
  fill_in "Rating", with: @show.rating
  select users(:one).email, from: "User"  # Associate the show with a user
  click_on "Create Show"

  assert_text "Show was successfully created"
  click_on "Return"
end

# In test_should_update_show
test "should update show" do
  visit show_url(@show)
  click_on "Edit", match: :first

  fill_in "Genre", with: @show.genre
  fill_in "Language", with: @show.language
  fill_in "Name", with: @show.name
  fill_in "Rating", with: @show.rating
  select users(:one).email, from: "User"  
  click_on "Update Show"

  assert_text "Show was successfully updated"
  click_on "Return"
end

  test "should destroy Show" do
    visit show_url(@show)
    click_on "Delete", match: :first

    assert_text "Show was successfully destroyed"
  end
end
