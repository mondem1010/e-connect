class Event < ApplicationRecord
	attachment :image
	# mount_uploaders :images, ImageUploader
	has_many :event_artist
	accepts_nested_attributes_for :event_artist

	belongs_to :user
	has_many :event_comments, dependent: :destroy

end
