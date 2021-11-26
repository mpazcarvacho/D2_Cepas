class AddJobToPositions < ActiveRecord::Migration[5.2]
  def change
    add_reference :positions, :job, foreign_key: true
  end
end
