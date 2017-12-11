require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should sign in" do
    
    user = User.new
    
    user.email = 'one@admin.com'
    user.encrypted_password = 'nothing'
    
    user.save
    assert user.valid?
    
  end
  
end
