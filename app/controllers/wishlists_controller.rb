class WishlistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_wishlist
  before_action :set_album
  
  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = session[:wishlists] || {}
  end
  
  def add
    @wishlist = current_user.wishlists.build
  end
  
   def destroy
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: 'Wishlist was successfully destroyed.' }
      format.json { head :no_content }
      end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = Wishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_params
      params.require(:wishlist).permit(:album_name)
    end
    
    def set_album
      @album = Album.find(wishlists_id: @wishlist.id)
    end
end
