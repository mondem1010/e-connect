class AddUserToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user, :reference
  end
end