class AddUserIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
  end
end


## User has id associated with review so that only they can edit/delete their entry