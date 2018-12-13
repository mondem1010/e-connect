class AddHandleNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :handle_name, :string
  end
end
