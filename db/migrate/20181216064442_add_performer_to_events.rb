class AddPerformerToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :performer, :string
  end
end
