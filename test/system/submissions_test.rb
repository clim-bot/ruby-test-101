require "application_system_test_case"

class SubmissionsTest < ApplicationSystemTestCase
  setup do
    @submission = submissions(:one)
  end

  test "visiting the index" do
    visit submissions_url

    assert_selector "h1", text: "Submissions"
  end

  test "creating a Submission" do
    visit submissions_url
    click_on "New Submission"

    fill_in "Body", with: @submission.body
    fill_in "Title", with: @submission.title
    click_on "Create Submission"

    assert_text "Submission was successfully created"
  end

  test "updating a Submission" do
    visit submissions_url
    click_on "Edit", match: :first

    fill_in "Body", with: @submission.body
    fill_in "Title", with: @submission.title
    click_on "Update Submission"

    assert_text "Submission was successfully updated"
  end

  test "destroying a Submission" do
    visit submissions_url

    # Ensure you're on the correct page by asserting a unique element from the index page
    assert_selector "h1", text: "Submissions"

    # Handle the confirmation modal with `accept_confirm`
    page.accept_confirm do
      click_on "Destroy", match: :first # Click on the first destroy link
    end

    # Check if the success message appears
    assert_text "Submission was successfully destroyed"
  end
end
