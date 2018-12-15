class EventComment < ApplicationRecord
	belongs_to :event
	belongs_to :user
	has_many :event_favorites, dependent: :destroy
	def event_favorite_user(user_id)
		event_favorites.find_by(user_id: user_id)
    end
end
