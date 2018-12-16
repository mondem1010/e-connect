class ArtistComment < ApplicationRecord
	belongs_to :user
	belongs_to :artist
	has_many :artist_favorites, dependent: :destroy
	def artist_favorite_user(user_id)
		artist_favorites.find_by(user_id: user_id)
    end
end
