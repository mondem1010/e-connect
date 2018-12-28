class CreateArtistComments < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_comments , :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC'do |t|
      t.integer :artist_id
      t.integer :user_id
      t.integer :star
      t.text :content
      t.integer :artist_favorites_count
      t.timestamps
    end
  end
end
