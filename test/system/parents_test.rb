require "application_system_test_case"

class ParentsTest < ApplicationSystemTestCase
  setup do
    @parent = parents(:one)
  end

  test "visiting the index" do
    visit parents_url
    assert_selector "h1", text: "Parents"
  end

  test "should create parent" do
    visit parents_url
    click_on "New parent"

    fill_in "Address", with: @parent.address
    fill_in "Email", with: @parent.email
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    fill_in "Phone number", with: @parent.phone_number
    fill_in "User", with: @parent.user_id
    click_on "Create Parent"

    assert_text "Parent was successfully created"
    click_on "Back"
  end

  test "should update Parent" do
    visit parent_url(@parent)
    click_on "Edit this parent", match: :first

    fill_in "Address", with: @parent.address
    fill_in "Email", with: @parent.email
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    fill_in "Phone number", with: @parent.phone_number
    fill_in "User", with: @parent.user_id
    click_on "Update Parent"

    assert_text "Parent was successfully updated"
    click_on "Back"
  end

  test "should destroy Parent" do
    visit parent_url(@parent)
    click_on "Destroy this parent", match: :first

    assert_text "Parent was successfully destroyed"
  end
end
