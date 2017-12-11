require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should not save" do
    user = User.new
    
    user.save
    refute user.valid?
  end
  
  test "should make account" do
    
    user = User.new
    user.email = 'danish@amir.com'
    user.password = 'danish'
    
    user.save
    assert user.valid?
  end
  
end
