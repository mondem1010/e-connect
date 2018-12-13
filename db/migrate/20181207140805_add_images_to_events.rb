class AddImagesToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :images, :json
  end
end
