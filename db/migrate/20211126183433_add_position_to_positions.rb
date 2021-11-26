class AddPositionToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :position, :string, array:true, default:[]
  end
end
