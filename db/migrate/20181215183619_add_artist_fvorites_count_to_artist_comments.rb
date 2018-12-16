class AddArtistFvoritesCountToArtistComments < ActiveRecord::Migration[5.2]
  def change
    add_column :artist_comments, :artist_favorites_count, :integer
  end
end
