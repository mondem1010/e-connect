class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :events,dependent: :destroy
         has_many :event_comments,dependent: :destroy
         has_many :event_favorites,dependent: :destroy
 	     has_many :artists,dependent: :destroy
         has_many :artist_comments,dependent: :destroy
          attachment :image
end
