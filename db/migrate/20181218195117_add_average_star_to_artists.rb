class AddAverageStarToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :average_star, :integer
  end
end
