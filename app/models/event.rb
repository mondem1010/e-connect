class Event < ApplicationRecord
	# validates :event_name, presence: true
	# validates :place, presence: true
	# # validates :performer, presence: true
	# validates :introduction, presence: true
	attachment :image
	# mount_uploaders :images, ImageUploader
	has_many :event_artist
	accepts_nested_attributes_for :event_artist
	belongs_to :user
	has_many :event_comments, dependent: :destroy


end
