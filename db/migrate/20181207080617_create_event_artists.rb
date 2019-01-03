class CreateEventArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :event_artists , :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :event_id
      t.integer :artist

      t.timestamps
    end
  end
end
