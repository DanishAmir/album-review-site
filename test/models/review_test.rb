require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
  setup do
    @album = albums(:one)
    @user = users(:one)
  end
  
  test "should not work" do
    review = Review.new
    
    review.save
    refute review.valid?
  end
  
  test "should work" do
    review = Review.new
    
    review.album = @album
    review.user = @user
    review.stars = 5
    review.thoughts = 'Brilliant album'
    
    review.save
    assert review.valid?
  end
  
  test "not more than 5 stars" do
    review = Review.new
    
    review.album = @album
    review.user = @user
    review.stars = 8
    review.thoughts = 'Fantastic'
    
    review.save
    refute review.valid?
  end
end
