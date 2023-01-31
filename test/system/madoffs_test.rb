require "application_system_test_case"

class MadoffsTest < ApplicationSystemTestCase
  setup do
    @madoff = madoffs(:one)
  end

  test "visiting the index" do
    visit madoffs_url
    assert_selector "h1", text: "Madoffs"
  end

  test "should create madoff" do
    visit madoffs_url
    click_on "New madoff"

    fill_in "Age", with: @madoff.age
    fill_in "Company name", with: @madoff.company_name
    fill_in "Con", with: @madoff.con
    fill_in "Current status", with: @madoff.current_status
    fill_in "Name", with: @madoff.name
    fill_in "Upvotes", with: @madoff.upvotes
    fill_in "Wiki link", with: @madoff.wiki_link
    click_on "Create Madoff"

    assert_text "Madoff was successfully created"
    click_on "Back"
  end

  test "should update Madoff" do
    visit madoff_url(@madoff)
    click_on "Edit this madoff", match: :first

    fill_in "Age", with: @madoff.age
    fill_in "Company name", with: @madoff.company_name
    fill_in "Con", with: @madoff.con
    fill_in "Current status", with: @madoff.current_status
    fill_in "Name", with: @madoff.name
    fill_in "Upvotes", with: @madoff.upvotes
    fill_in "Wiki link", with: @madoff.wiki_link
    click_on "Update Madoff"

    assert_text "Madoff was successfully updated"
    click_on "Back"
  end

  test "should destroy Madoff" do
    visit madoff_url(@madoff)
    click_on "Destroy this madoff", match: :first

    assert_text "Madoff was successfully destroyed"
  end
end
