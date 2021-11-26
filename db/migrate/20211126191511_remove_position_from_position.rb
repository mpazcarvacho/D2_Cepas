class RemovePositionFromPosition < ActiveRecord::Migration[5.2]
  def change
    remove_column :positions, :position
  end
end
