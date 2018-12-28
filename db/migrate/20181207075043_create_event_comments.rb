class CreateEventComments < ActiveRecord::Migration[5.2]
  def change
    create_table :event_comments,:options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :comment
      t.integer :star

      t.timestamps
    end
  end
end
