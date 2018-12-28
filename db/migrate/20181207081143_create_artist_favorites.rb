class CreateArtistFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_favorites , :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC'do |t|
      t.integer :artist_comment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
