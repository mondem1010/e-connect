class RemoveSiteUrlFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :site_url, :string
  end
end
