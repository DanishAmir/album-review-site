require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  setup do
    @review = reviews(:one)
    @album = albums(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { stars: @review.stars, thoughts: @review.thoughts }
    end
    assert_redirected_to new_album_review_path(assigns(:review))
  end

  test "should update review" do
    patch :update, id: @review, review: { stars: @review.stars, thoughts: @review.thoughts }
    assert_redirected_to edit_album_review_path(assigns(@review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end
    assert_redirected_to albums_path
  end
  
end
