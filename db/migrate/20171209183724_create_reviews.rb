class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars, null: false
      t.text :thoughts

      t.timestamps null: false
    end
  end
end
