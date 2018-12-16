class ArtistFavorite < ApplicationRecord
	 belongs_to :user
  belongs_to :event_comment,counter_cache: :event_favotites_count
end
