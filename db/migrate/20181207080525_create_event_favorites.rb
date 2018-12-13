class CreateEventFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :event_favorites do |t|
      t.integer :user_id
      t.integer :event_comment_id

      t.timestamps
    end
  end
end
