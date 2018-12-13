class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.integer :user_id
      t.string :artist_name
      t.string :introduction

      t.timestamps
    end
  end
end
