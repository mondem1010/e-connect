class AddUrlToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :url, :text
  end
end
