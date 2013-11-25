class CreateStraddles < ActiveRecord::Migration
  def change
    create_table :straddles do |t|
      t.string :year
      t.string :month
      t.integer :strike
      t.float :bid
      t.float :ask

      t.timestamps
    end
  end
end
