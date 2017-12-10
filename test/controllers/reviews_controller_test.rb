require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
    @album = albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

  test "should get new" do
    get :new, @album
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { stars: @review.stars, thoughts: @review.thoughts }
    end
    assert_redirected_to album_path(assigns(:review))
  end

  test "should get edit" do
    get :edit, @review
    assert_response :success
  end

  test "should update review" do
    patch :update, id: @review, review: { stars: @review.stars, thoughts: @review.thoughts }
    assert_redirected_to edit_album_review(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
