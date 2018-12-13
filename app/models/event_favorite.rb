class EventFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :event_comment
end
