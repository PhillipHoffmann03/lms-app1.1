require "application_system_test_case"

class NotificationsTest < ApplicationSystemTestCase
  setup do
    @notification = notifications(:one)
  end

  test "visiting the index" do
    visit notifications_url
    assert_selector "h1", text: "Notifications"
  end

  test "should create notification" do
    visit notifications_url
    click_on "New notification"

    fill_in "Date", with: @notification.date
    fill_in "Message", with: @notification.message
    fill_in "Status", with: @notification.status
    fill_in "Type", with: @notification.type
    fill_in "User", with: @notification.user_id
    click_on "Create Notification"

    assert_text "Notification was successfully created"
    click_on "Back"
  end

  test "should update Notification" do
    visit notification_url(@notification)
    click_on "Edit this notification", match: :first

    fill_in "Date", with: @notification.date
    fill_in "Message", with: @notification.message
    fill_in "Status", with: @notification.status
    fill_in "Type", with: @notification.type
    fill_in "User", with: @notification.user_id
    click_on "Update Notification"

    assert_text "Notification was successfully updated"
    click_on "Back"
  end

  test "should destroy Notification" do
    visit notification_url(@notification)
    click_on "Destroy this notification", match: :first

    assert_text "Notification was successfully destroyed"
  end
end
