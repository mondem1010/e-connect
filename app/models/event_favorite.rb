
class EventFavorite < ApplicationRecord
  belongs_to :user
  # belongs_to :event_comment,counter_cache: :event_favotites_count
  belongs_to :event_comment
  # 	def event_favorite_user? user
		# event_favorites.where(user_id: user.id).exists?
  #   end
end