class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /albums
  # GET /albums.json
  def index 
    @albums = Album.all ## in the index page, this will show all albums that have been made
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @reviews = Review.where(album_id: @album.id).order("created_at DESC") ## shows all reviews in descending order with the albums
  end

  # GET /albums/new
  def new
    @album = current_user.albums.build ##when creating a new album, a user can only create an album
  end

  # GET /albums/1/edit
  # POST /albums
  # POST /albums.json
  
##shows that if all the input requirements such as validation are met, can then save it otherwise issues
  def create
    @album = current_user.albums.build(album_params)  
    respond_to do |format| 
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end
  
  ## will allow you to update the album if all requirements are met
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end
  
  ##redirects to album index page when deleted - best place to go
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end
    
    
    def album_params
      params.require(:album).permit(:title, :description, :artist, :year, :image)
    end
end
