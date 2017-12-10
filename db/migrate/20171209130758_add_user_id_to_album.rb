class AddUserIdToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :user_id, :integer
  end
end
##User ID associated so that the user who created can only delete the album they made - not anyone else