class AddAlbumIdToWishlist < ActiveRecord::Migration
  def change
    add_column :wishlists, :album_id, :integer  
  end
end
