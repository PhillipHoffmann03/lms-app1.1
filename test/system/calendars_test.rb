require "application_system_test_case"

class CalendarsTest < ApplicationSystemTestCase
  setup do
    @calendar = calendars(:one)
  end

  test "visiting the index" do
    visit calendars_url
    assert_selector "h1", text: "Calendars"
  end

  test "should create calendar" do
    visit calendars_url
    click_on "New calendar"

    fill_in "End date", with: @calendar.end_date
    fill_in "Event description", with: @calendar.event_description
    fill_in "Event title", with: @calendar.event_title
    fill_in "Start date", with: @calendar.start_date
    click_on "Create Calendar"

    assert_text "Calendar was successfully created"
    click_on "Back"
  end

  test "should update Calendar" do
    visit calendar_url(@calendar)
    click_on "Edit this calendar", match: :first

    fill_in "End date", with: @calendar.end_date
    fill_in "Event description", with: @calendar.event_description
    fill_in "Event title", with: @calendar.event_title
    fill_in "Start date", with: @calendar.start_date
    click_on "Update Calendar"

    assert_text "Calendar was successfully updated"
    click_on "Back"
  end

  test "should destroy Calendar" do
    visit calendar_url(@calendar)
    click_on "Destroy this calendar", match: :first

    assert_text "Calendar was successfully destroyed"
  end
end
