class Artist < ApplicationRecord
	attachment :image
	# mount_uploaders :images, ImageUploader
	belongs_to :user
	has_many :artist_comments, dependent: :destroy
	validates :artist_name, presence: true
	validates :introduction, presence: true
end
