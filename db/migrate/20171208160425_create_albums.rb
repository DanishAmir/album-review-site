class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.string :artist, null: false
      t.integer :year, null: false

      t.timestamps null: false
    end
  end
end

## Creates a database of albums, the artist, year and title cannot be left empty if creating