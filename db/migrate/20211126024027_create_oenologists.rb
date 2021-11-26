class CreateOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologists do |t|
      t.string :Name
      t.integer :Age
      t.string :Country

      t.timestamps
    end
  end
end
