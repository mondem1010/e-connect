class AddAvgStarToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :avg_star, :integer
  end
end
