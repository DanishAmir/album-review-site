require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should not save - not possible" do
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
  
  test "must have a password" do
    user = User.new
    user.email = 'danish@amir.com'
    
    user.save
    refute user.valid?
  end
  
  test "password must be 6 characters" do
    user = User.new
    user.email = 'danish@amir.com'
    user.password = 'dan'
    
    user.save
    refute user.valid?
  end
  
end
