require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    
    assert_template layout: 'application'
    
    assert_select 'title', 'Which Album?'
    assert_select 'h1', 'Which Album?'
    assert_select 'p', 'Wanna review the latest album? Click here below'
    
    
  end

end
