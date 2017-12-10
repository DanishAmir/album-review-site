require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("danishamir@me.com", "Danish Amir", "6789998212", @message = "Hello")
    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
  end
end