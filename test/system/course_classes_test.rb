require "application_system_test_case"

class CourseClassesTest < ApplicationSystemTestCase
  setup do
    @course_class = course_classes(:one)
  end

  test "visiting the index" do
    visit course_classes_url
    assert_selector "h1", text: "Course classes"
  end

  test "should create course class" do
    visit course_classes_url
    click_on "New course class"

    fill_in "Course", with: @course_class.course_id
    fill_in "Description", with: @course_class.description
    fill_in "Name", with: @course_class.name
    fill_in "Room", with: @course_class.room
    fill_in "Schedule", with: @course_class.schedule
    fill_in "Teacher", with: @course_class.teacher_id
    click_on "Create Course class"

    assert_text "Course class was successfully created"
    click_on "Back"
  end

  test "should update Course class" do
    visit course_class_url(@course_class)
    click_on "Edit this course class", match: :first

    fill_in "Course", with: @course_class.course_id
    fill_in "Description", with: @course_class.description
    fill_in "Name", with: @course_class.name
    fill_in "Room", with: @course_class.room
    fill_in "Schedule", with: @course_class.schedule
    fill_in "Teacher", with: @course_class.teacher_id
    click_on "Update Course class"

    assert_text "Course class was successfully updated"
    click_on "Back"
  end

  test "should destroy Course class" do
    visit course_class_url(@course_class)
    click_on "Destroy this course class", match: :first

    assert_text "Course class was successfully destroyed"
  end
end
