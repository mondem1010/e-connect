class AddSiteUrlToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :site_url, :string
  end
end
