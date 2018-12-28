class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists , :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC'do |t|
      t.integer :user_id
      t.string :artist_name
      t.string :introduction
      t.string  :image_id
      t.text :url
      t.integer :average_star
      t.timestamps
    end
  end
end
