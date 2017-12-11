class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :album_name, null: false

      t.timestamps null: false
    end
  end
end
