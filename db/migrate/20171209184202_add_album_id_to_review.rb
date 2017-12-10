class AddUserIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :album_id, :integer
  end
end

## This was made so that the user was related to review