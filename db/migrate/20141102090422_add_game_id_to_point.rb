class AddGameIdToPoint < ActiveRecord::Migration
  def change
    add_column :points, :game_id, :integer
  end
end
