class RemoveUserIdFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :user, :string
  end
end
