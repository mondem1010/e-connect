class EventComment < ApplicationRecord
	belongs_to :event
	belongs_to :user
	has_many :event_favorites, dependent: :destroy
	validates :comment, presence: true
	validates :star, presence: true
	def event_favorite_user? user
		event_favorites.where(user_id: user.id).exists?
    end

end
