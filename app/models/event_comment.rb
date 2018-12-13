class EventComment < ApplicationRecord
	belongs_to :event
	belongs_to :user
	has_many :event_favorites, dependent: :destroy
	 def event_favorited_by?(user)
         event_favorites.where(user_id: user.id).exists?
     end
end
