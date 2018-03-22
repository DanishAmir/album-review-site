class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_album
  before_action :authenticate_user!
  
  
  def new
    @review = Review.new ##will save a new review and this method is called when the person is creating a review
  end


  def create ##this method allows the user to create and it is in respect and associated with user and album. A user can create a review and a review can be written for an album that exists in the website
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.album_id = @album.id
    if @review.save
      redirect_to @album
    else
      render 'new' ##if any issues
    end
  end

  def update ## edit if any issues 
    @review = set_review
    if @review.update(review_params)
      redirect_to album_path(@album)
    else
      render 'edit' ## if there are issues again must edit once again
    end
  end

  def destroy
    @review.destroy
    redirect_to album_path(@album) ##delete the review and back at the path of the album you just deleted review for
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end
    
    def set_album
      @album = Album.find(params[:album_id]) || Album.find(review_params[:album_id])
    end

    def review_params
      params.require(:review).permit(:stars, :thoughts)
    end

end    
