class ArtistFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :artist_comment
  def artist_favorite_user? user
		artist_favorites.where(user_id: user.id).exists?
   end

end
