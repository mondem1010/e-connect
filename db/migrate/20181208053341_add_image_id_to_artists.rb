class AddImageIdToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :image_id, :string
  end
end
