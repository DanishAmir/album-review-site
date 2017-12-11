class AddAlbumIdToWishlist < ActiveRecord::Migration
  def change
    add_column :wishlist, :album_id, :integer  
  end
end
