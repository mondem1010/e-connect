class CreateArtistFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_favorites do |t|
      t.integer :artist_comment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
