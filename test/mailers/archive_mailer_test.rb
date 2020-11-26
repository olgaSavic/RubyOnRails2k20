require 'test_helper'

class ArchiveMailerTest < ActionMailer::TestCase
  test "new_archive" do
    mail = ArchiveMailer.new_archive
    assert_equal "New archive", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
