class WishlistsController < ApplicationController
  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = session[:wishlists] || {}
  end
  
  def add
    id = params[:id]
    wishlist = session[:wishlists] ||= {}
    wishlist[id] = (cart[id] || 0) + 1
    
    redirect_to :action => :index
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
    @album = Album.find(params[:id])
    end
end
