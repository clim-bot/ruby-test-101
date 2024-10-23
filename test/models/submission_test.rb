require "test_helper"

class SubmissionTest < ActiveSupport::TestCase
  test "should not save submission without title" do
    submission = Submission.new
    assert_not submission.save, "Submission saved without a title"
  end
end
