class AddImagesToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :images, :json
  end
end
