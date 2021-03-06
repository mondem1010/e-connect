class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :event_name
      t.datetime :date
      t.string :introduction
      t.string :image_id
      t.string :place
      t.string :performer
      t.string :avg_star

      t.timestamps
    end
  end
end
