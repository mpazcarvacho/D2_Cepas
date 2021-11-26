class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
