class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :year
      t.string :month
      t.integer :strike
      t.string :strategy
      t.string :price
      t.integer :quantity
      t.string :direction
      t.integer :house
      t.text :genaric

      t.timestamps
    end
  end
end
