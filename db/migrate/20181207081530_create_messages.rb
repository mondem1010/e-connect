class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :user_id
      t.string :room_id
      t.string :content

      t.timestamps
    end
  end
end
