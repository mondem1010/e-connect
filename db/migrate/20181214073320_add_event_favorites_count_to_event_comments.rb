class AddEventFavoritesCountToEventComments < ActiveRecord::Migration[5.2]
  def change
    add_column :event_comments, :event_favorites_count, :integer
  end
end
